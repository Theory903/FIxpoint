import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import '../models/listtask_item_model.dart';
import '../models/notifcation_model.dart';
import '../models/receivedsection_item_model.dart';
part 'notifcation_event.dart';
part 'notifcation_state.dart';

/// A bloc that manages the state of a Notifcation according to the event that is dispatched to it.
class NotifcationBloc extends Bloc<NotifcationEvent, NotifcationState> {
  NotifcationBloc(NotifcationState initialState) : super(initialState) {
    on<NotifcationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotifcationInitialEvent event,
    Emitter<NotifcationState> emit,
  ) async {
    emit(
      state.copyWith(
        notifcationModelObj: state.notifcationModelObj?.copyWith(
          listtaskItemList: fillListtaskItemList(),
          receivedsectionItemList: fillReceivedsectionItemList(),
        ),
      ),
    );
  }

  List<ListtaskItemModel> fillListtaskItemList() {
    return [
      ListtaskItemModel(taskassigned: "Task Assigned ", time: "09:02 AM"),
      ListtaskItemModel()
    ];
  }

  List<ReceivedsectionItemModel> fillReceivedsectionItemList() {
    return [
      ReceivedsectionItemModel(received: "Received Shipping", time: "09:02 AM"),
      ReceivedsectionItemModel()
    ];
  }
}
