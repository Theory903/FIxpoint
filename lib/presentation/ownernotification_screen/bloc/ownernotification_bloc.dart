import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import '../models/ownernotification_model.dart';
import '../models/todaynotifications_item_model.dart';
import '../models/yesterdaynotifications_item_model.dart';
part 'ownernotification_event.dart';
part 'ownernotification_state.dart';

/// A bloc that manages the state of a Ownernotification according to the event that is dispatched to it.
class OwnernotificationBloc
    extends Bloc<OwnernotificationEvent, OwnernotificationState> {
  OwnernotificationBloc(OwnernotificationState initialState)
      : super(initialState) {
    on<OwnernotificationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OwnernotificationInitialEvent event,
    Emitter<OwnernotificationState> emit,
  ) async {
    emit(
      state.copyWith(
        ownernotificationModelObj: state.ownernotificationModelObj?.copyWith(
          todaynotificationsItemList: fillTodaynotificationsItemList(),
          yesterdaynotificationsItemList: fillYesterdaynotificationsItemList(),
        ),
      ),
    );
  }

  List<TodaynotificationsItemModel> fillTodaynotificationsItemList() {
    return [
      TodaynotificationsItemModel(time: "09:02 AM"),
      TodaynotificationsItemModel()
    ];
  }

  List<YesterdaynotificationsItemModel> fillYesterdaynotificationsItemList() {
    return [
      YesterdaynotificationsItemModel(
          shippingison: "Shipping is on the way ", time: "09:02 AM"),
      YesterdaynotificationsItemModel()
    ];
  }
}
