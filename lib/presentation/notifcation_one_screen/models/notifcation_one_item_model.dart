import 'package:equatable/equatable.dart';

/// This class is used in the [notifcation_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class NotifcationOneItemModel extends Equatable {
  NotifcationOneItemModel({this.tasktimeOne, this.id}) {
    tasktimeOne = tasktimeOne ?? "Task Time :";
    id = id ?? "";
  }

  String? tasktimeOne;

  String? id;

  NotifcationOneItemModel copyWith({
    String? tasktimeOne,
    String? id,
  }) {
    return NotifcationOneItemModel(
      tasktimeOne: tasktimeOne ?? this.tasktimeOne,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [tasktimeOne, id];
}
