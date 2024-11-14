import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import '../models/notifcation_one_item_model.dart';
import '../models/notifcation_one_model.dart';
part 'notifcation_one_event.dart';
part 'notifcation_one_state.dart';

/// A bloc that manages the state of a NotifcationOne according to the event that is dispatched to it.
class NotifcationOneBloc
    extends Bloc<NotifcationOneEvent, NotifcationOneState> {
  NotifcationOneBloc(NotifcationOneState initialState) : super(initialState) {
    on<NotifcationOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotifcationOneInitialEvent event,
    Emitter<NotifcationOneState> emit,
  ) async {
    emit(
      state.copyWith(
        notifcationOneModelObj: state.notifcationOneModelObj?.copyWith(
          notifcationOneItemList: fillNotifcationOneItemList(),
        ),
      ),
    );
  }

  List<NotifcationOneItemModel> fillNotifcationOneItemList() {
    return [
      NotifcationOneItemModel(tasktimeOne: "Task Time :"),
      NotifcationOneItemModel(),
      NotifcationOneItemModel(),
      NotifcationOneItemModel()
    ];
  }
}
