import 'package:equatable/equatable.dart';
import 'package:fixpoint/core/utils/image_constant.dart';

/// This class is used in the [tasklist_item_widget] screen.

// ignore_for_file: must_be_immutable
class TasklistItemModel extends Equatable {
  TasklistItemModel(
      {this.attendanceOne, this.attendanceTwo, this.sixty, this.id}) {
    attendanceOne = attendanceOne ?? ImageConstant.imgSimpleLineIconsCalender;
    attendanceTwo = attendanceTwo ?? "Attendance";
    sixty = sixty ?? "37/60";
    id = id ?? "";
  }

  String? attendanceOne;

  String? attendanceTwo;

  String? sixty;

  String? id;

  TasklistItemModel copyWith({
    String? attendanceOne,
    String? attendanceTwo,
    String? sixty,
    String? id,
  }) {
    return TasklistItemModel(
      attendanceOne: attendanceOne ?? this.attendanceOne,
      attendanceTwo: attendanceTwo ?? this.attendanceTwo,
      sixty: sixty ?? this.sixty,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [attendanceOne, attendanceTwo, sixty, id];
}
