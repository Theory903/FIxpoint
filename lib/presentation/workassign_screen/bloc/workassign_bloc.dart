import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import '../models/contactlist_item_model.dart';
import '../models/workassign_model.dart';
part 'workassign_event.dart';
part 'workassign_state.dart';

/// A bloc that manages the state of a Workassign according to the event that is dispatched to it.
class WorkassignBloc extends Bloc<WorkassignEvent, WorkassignState> {
  WorkassignBloc(WorkassignState initialState) : super(initialState) {
    on<WorkassignInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WorkassignInitialEvent event,
    Emitter<WorkassignState> emit,
  ) async {
    emit(
      state.copyWith(
        workassignModelObj: state.workassignModelObj?.copyWith(
          contactlistItemList: fillContactlistItemList(),
        ),
      ),
    );
  }

  List<ContactlistItemModel> fillContactlistItemList() {
    return [
      ContactlistItemModel(
          rajuSharmaOne: ImageConstant.imgEllipse344x44,
          rajusharma: "Raju sharma",
          washing: "Washing"),
      ContactlistItemModel(
          rajuSharmaOne: ImageConstant.imgEllipse544x44,
          rajusharma: "Rajesh sharma",
          washing: "Mechanic"),
      ContactlistItemModel(
          rajuSharmaOne: ImageConstant.imgEllipse4,
          rajusharma: "Neha sharma",
          washing: "Manger"),
      ContactlistItemModel(
          rajuSharmaOne: ImageConstant.imgEllipse644x44,
          rajusharma: "Chandu sharma",
          washing: "Washing"),
      ContactlistItemModel(
          rajuSharmaOne: ImageConstant.imgEllipse4,
          rajusharma: "Meena sharma",
          washing: "Washing"),
      ContactlistItemModel(
          rajuSharmaOne: ImageConstant.imgEllipse544x44,
          rajusharma: "Raju sharma",
          washing: "Washing")
    ];
  }
}
