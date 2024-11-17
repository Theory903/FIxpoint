import 'todaynotifications_item_model.dart';
import 'yesterdaynotifications_item_model.dart';

class OwnernotificationModel {
  List<TodaynotificationsItemModel> todaynotificationsItemList;
  List<YesterdaynotificationsItemModel> yesterdaynotificationsItemList;

  OwnernotificationModel({
    this.todaynotificationsItemList = const [],
    this.yesterdaynotificationsItemList = const [],
  });
}
