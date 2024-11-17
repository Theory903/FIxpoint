import 'package:fixpoint/presentation/ownerdashboard_page/models/scrollview_tab_model.dart';
import 'package:get/get.dart';

class ScrollviewTabController extends GetxController {
  var scrollviewTabModelObj = ScrollviewTabModel().obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize your data here
    loadInitialData();
  }

  void loadInitialData() {
    // Add your initial data loading logic here
    // For example:
    scrollviewTabModelObj.update((model) {
      model?.statisticslistItemList = [
        // Populate with initial data
      ];
    });
  }
}
