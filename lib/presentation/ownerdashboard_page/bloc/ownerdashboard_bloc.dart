import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import '../models/ownerdashboard_model.dart';
import '../models/scrollview_tab_model.dart';
import '../models/statisticslist_item_model.dart';
part 'ownerdashboard_event.dart';
part 'ownerdashboard_state.dart';

/// A bloc that manages the state of a Ownerdashboard according to the event that is dispatched to it.
class OwnerdashboardBloc
    extends Bloc<OwnerdashboardEvent, OwnerdashboardState> {
  OwnerdashboardBloc(OwnerdashboardState initialState) : super(initialState) {
    on<OwnerdashboardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OwnerdashboardInitialEvent event,
    Emitter<OwnerdashboardState> emit,
  ) async {
    emit(
      state.copyWith(
        scrollviewTabModelObj: state.scrollviewTabModelObj?.copyWith(
          statisticslistItemList: fillStatisticslistItemList(),
        ),
      ),
    );
  }

  List<StatisticslistItemModel> fillStatisticslistItemList() {
    return [
      StatisticslistItemModel(
          image: ImageConstant.imgRectangle161,
          sixtyfive: "+2.65%",
          revenue: "Revenue"),
      StatisticslistItemModel(
          image: ImageConstant.imgRectangle162,
          sixtyfive: "+2.65%",
          revenue: "Task left"),
      StatisticslistItemModel(
          image: ImageConstant.imgRectangle163,
          sixtyfive: "+2",
          revenue: "Worker"),
      StatisticslistItemModel(
          image: ImageConstant.imgRectangle164,
          sixtyfive: "+2.65%",
          revenue: "Rating")
    ];
  }
}
