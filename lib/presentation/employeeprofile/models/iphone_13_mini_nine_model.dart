import 'package:equatable/equatable.dart';
import 'tasklist_item_model.dart';

/// This class defines the variables used in the [iphone_13_mini_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class Iphone13MiniNineModel extends Equatable {
  Iphone13MiniNineModel({this.tasklistItemList = const []});

  List<TasklistItemModel> tasklistItemList;

  Iphone13MiniNineModel copyWith({List<TasklistItemModel>? tasklistItemList}) {
    return Iphone13MiniNineModel(
      tasklistItemList: tasklistItemList ?? this.tasklistItemList,
    );
  }

  @override
  List<Object?> get props => [tasklistItemList];
}
