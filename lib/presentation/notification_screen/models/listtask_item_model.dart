import 'package:equatable/equatable.dart';

/// This class is used in the [listtask_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListtaskItemModel extends Equatable {
  ListtaskItemModel({this.taskassigned, this.time, this.id}) {
    taskassigned = taskassigned ?? "Task Assigned ";
    time = time ?? "09:02 AM";
    id = id ?? "";
  }

  String? taskassigned;

  String? time;

  String? id;

  ListtaskItemModel copyWith({
    String? taskassigned,
    String? time,
    String? id,
  }) {
    return ListtaskItemModel(
      taskassigned: taskassigned ?? this.taskassigned,
      time: time ?? this.time,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [taskassigned, time, id];
}
