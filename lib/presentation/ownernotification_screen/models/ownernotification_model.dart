import 'package:equatable/equatable.dart';
import 'todaynotifications_item_model.dart';
import 'yesterdaynotifications_item_model.dart';

/// This class defines the variables used in the [ownernotification_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class OwnernotificationModel extends Equatable {
  OwnernotificationModel(
      {this.todaynotificationsItemList = const [],
      this.yesterdaynotificationsItemList = const []});

  List<TodaynotificationsItemModel> todaynotificationsItemList;

  List<YesterdaynotificationsItemModel> yesterdaynotificationsItemList;

  OwnernotificationModel copyWith({
    List<TodaynotificationsItemModel>? todaynotificationsItemList,
    List<YesterdaynotificationsItemModel>? yesterdaynotificationsItemList,
  }) {
    return OwnernotificationModel(
      todaynotificationsItemList:
          todaynotificationsItemList ?? this.todaynotificationsItemList,
      yesterdaynotificationsItemList:
          yesterdaynotificationsItemList ?? this.yesterdaynotificationsItemList,
    );
  }

  @override
  List<Object?> get props =>
      [todaynotificationsItemList, yesterdaynotificationsItemList];
}
