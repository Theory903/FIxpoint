import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import '../models/iphone_13_mini_four_initial_model.dart';
import '../models/management_model.dart';
import '../models/outletlist_item_model.dart';
part 'management_event.dart';
part 'management_state.dart';

/// A bloc that manages the state of a Management according to the event that is dispatched to it.
class ManagementBloc extends Bloc<ManagementEvent, ManagementState> {
  ManagementBloc(ManagementState initialState) : super(initialState) {
    on<ManagementInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ManagementInitialEvent event,
    Emitter<ManagementState> emit,
  ) async {
    emit(
      state.copyWith(
        iphone13MiniFourInitialModelObj:
            state.iphone13MiniFourInitialModelObj?.copyWith(
          outletlistItemList: fillOutletlistItemList(),
        ),
      ),
    );
  }

  List<OutletlistItemModel> fillOutletlistItemList() {
    return [
      OutletlistItemModel(
          peopleCounter: "10 people",
          outletoneOne: ImageConstant.imgIcRoundStarOutline,
          outletoneThree: ImageConstant.imgGroup16),
      OutletlistItemModel(
          peopleCounter: "10 people",
          outletoneOne: ImageConstant.imgIcRoundStarOutlinePrimary,
          outletoneThree: ImageConstant.imgGroup16Onerrorcontainer)
    ];
  }
}
