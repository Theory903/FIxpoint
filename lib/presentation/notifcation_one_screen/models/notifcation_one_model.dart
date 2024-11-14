import 'package:equatable/equatable.dart';
import 'notifcation_one_item_model.dart';

/// This class defines the variables used in the [notifcation_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class NotifcationOneModel extends Equatable {
  NotifcationOneModel({this.notifcationOneItemList = const []});

  List<NotifcationOneItemModel> notifcationOneItemList;

  NotifcationOneModel copyWith(
      {List<NotifcationOneItemModel>? notifcationOneItemList}) {
    return NotifcationOneModel(
      notifcationOneItemList:
          notifcationOneItemList ?? this.notifcationOneItemList,
    );
  }

  @override
  List<Object?> get props => [notifcationOneItemList];
}
