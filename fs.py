import os

def analyze_directory_structure(path, output_file):
    """
    Analyzes the directory structure starting from the given path and saves it into a text file.

    :param path: The directory path to analyze.
    :param output_file: The path where the output text file will be saved.
    """
    def write_structure_to_file(current_path, level, file):
        """
        Helper function to recursively write the directory structure to the file.
        """
        # Write the current directory with indentation based on the level
        file.write("    " * level + f"[DIR] {os.path.basename(current_path)}\n")
        # List all files and directories in the current directory
        try:
            for item in os.listdir(current_path):
                item_path = os.path.join(current_path, item)
                if os.path.isdir(item_path):
                    # If it's a directory, recursively call this function
                    write_structure_to_file(item_path, level + 1, file)
                else:
                    # If it's a file, just write it with indentation
                    file.write("    " * (level + 1) + f"[FILE] {item}\n")
        except PermissionError:
            file.write("    " * (level + 1) + "[ERROR] Permission Denied\n")

    # Open the output file in write mode
    with open(output_file, 'w') as file:
        write_structure_to_file(path, 0, file)
        print(f"Directory structure saved to {output_file}")

# Example usage
analyze_directory_structure('lib/', 'directory_structure.txt')
