import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fixpoint/presentation/loginpage_screen/controllers/login_controller.dart';
import 'package:fixpoint/theme/custom_button_style.dart'; // Customize your button styles here
import 'package:fixpoint/widgets/custom_elevated_button.dart'; // Reuse your custom elevated button
import 'package:fixpoint/widgets/custom_icon_button.dart'; // Reuse your custom icon button
import 'package:fixpoint/widgets/custom_text_form_field.dart'; // Reuse your custom text form field
import 'package:fixpoint/widgets/custom_text_form_field.dart'; // Ensure this import is correct
import 'package:fixpoint/widgets/app_bar/custom_app_bar.dart'; // Reuse your custom app bar widgets
import 'package:fixpoint/widgets/app_bar/appbar_leading_iconbutton.dart'; // Reuse your app bar leading icon button

class LoginpageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find<LoginController>(); // GetX controller

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 64.0,
        leading: AppbarLeadingIconbutton(
          imagePath: 'assets/icons/back_arrow.png', // Customize as needed
          onTap: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          "Login",
          style: TextStyle(color: Colors.green[800]),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Form(
            key: controller.formKey,
            child: ListView(
              children: [
                // Header Section
                _buildHeader(),

                SizedBox(height: 30.0),

                // Email TextField
                CustomTextFormField(
                  controller: controller.emailController,
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  keyboardType: TextInputType.emailAddress,
                  prefix: Icon(Icons.email, color: Colors.green),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear, color: Colors.grey),
                    onPressed: () {
                      controller.emailController.clear();
                    },
                  ), // Add a suffixIcon parameter
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 14.0),

                // Password TextField
                Obx(() {
                  return CustomTextFormField(
                    controller: controller.passwordController,
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    keyboardType: TextInputType.text,
                    obscureText: !controller.isPasswordVisible.value,
                    prefix: Icon(Icons.lock, color: Colors.green),
                    suffixIcon: IconButton(
                      icon: Icon(
                        controller.isPasswordVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: controller.togglePasswordVisibility,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      }
                      return null;
                    },
                  );
                }),

                SizedBox(height: 10.0),

                // Forgot Password Button
                _buildForgotPasswordButton(),

                SizedBox(height: 42.0),

                // Login Button
                Obx(() {
                  return ElevatedButton(
                    onPressed: controller.isLoading.value ? null : controller.login,
                    child: controller.isLoading.value
                        ? CircularProgressIndicator(color: Colors.white)
                        : Text("Log In"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[700],
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 48.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  );
                }),

                SizedBox(height: 20.0),

                // Divider with Text in the middle
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey[400],
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("OR", style: TextStyle(color: Colors.grey)),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey[400],
                        thickness: 1,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20.0),

                // Social Media Buttons
                _buildSocialMediaButtons(controller),

                SizedBox(height: 30.0),

                // Contact Text
                _buildContactText(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Header Section
  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Let's Sign In",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.green[800],
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          "Take your business to the next level",
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        ),
      ],
    );
  }

  // Forgot Password Button
  Widget _buildForgotPasswordButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          // Implement forgot password functionality
        },
        child: Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.green[700]),
        ),
      ),
    );
  }

  // Social Media Buttons
  Widget _buildSocialMediaButtons(LoginController controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialMediaButton(
          icon: Icons.g_translate,
          label: "Google",
          color: Colors.red,
          onTap: () {
            // Implement Google Sign-In
          },
        ),
        SizedBox(width: 10.0),
        _socialMediaButton(
          icon: Icons.facebook,
          label: "Facebook",
          color: Colors.blue[800]!,
          onTap: controller.signInWithFacebook,
        ),
        SizedBox(width: 10.0),
        _socialMediaButton(
          icon: Icons.apple,
          label: "Apple",
          color: Colors.black,
          onTap: () {
            // Implement Apple Sign-In
          },
        ),
      ],
    );
  }

  Widget _socialMediaButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: ElevatedButton.icon(
        onPressed: onTap,
        icon: Icon(icon, color: Colors.white),
        label: Text(label, style: TextStyle(color: Colors.white)),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          minimumSize: Size(double.infinity, 50.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }

  // Contact Text
  Widget _buildContactText() {
    return Center(
      child: TextButton(
        onPressed: () {
          // Implement contact us functionality
        },
        child: Text(
          "Don't have an account? Contact Us",
          style: TextStyle(color: Colors.green[700]),
        ),
      ),
    );
  }
}
