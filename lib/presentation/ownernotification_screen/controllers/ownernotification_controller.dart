import 'package:get/get.dart';
import '../models/ownernotification_model.dart';
import '../models/todaynotifications_item_model.dart';
import '../models/yesterdaynotifications_item_model.dart';

class OwnernotificationController extends GetxController {
  var ownernotificationModelObj = OwnernotificationModel().obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize your data here
    loadNotifications();
  }

  void loadNotifications() {
    // Load your notifications data here
    ownernotificationModelObj.update((model) {
      model?.todaynotificationsItemList = [
        TodaynotificationsItemModel(
          title: 'New Order',
          message: 'You have a new order from John Doe.',
          time: DateTime.now(),
        ),
        // Add more items as needed
      ];
      model?.yesterdaynotificationsItemList = [
        YesterdaynotificationsItemModel(
          title: 'Order Shipped',
          message: 'Order #12345 has been shipped.',
          time: DateTime.now().subtract(Duration(days: 1)),
        ),
        // Add more items as needed
      ];
    });
  }
}
