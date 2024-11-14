import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import '../models/gridelectricity_item_model.dart';
import '../models/ownerbillpayment_model.dart';
part 'ownerbillpayment_event.dart';
part 'ownerbillpayment_state.dart';

/// A bloc that manages the state of a Ownerbillpayment according to the event that is dispatched to it.
class OwnerbillpaymentBloc
    extends Bloc<OwnerbillpaymentEvent, OwnerbillpaymentState> {
  OwnerbillpaymentBloc(OwnerbillpaymentState initialState)
      : super(initialState) {
    on<OwnerbillpaymentInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OwnerbillpaymentInitialEvent event,
    Emitter<OwnerbillpaymentState> emit,
  ) async {
    emit(
      state.copyWith(
        ownerbillpaymentModelObj: state.ownerbillpaymentModelObj?.copyWith(
          gridelectricityItemList: fillGridelectricityItemList(),
        ),
      ),
    );
  }

  List<GridelectricityItemModel> fillGridelectricityItemList() {
    return [
      GridelectricityItemModel(
          electricityOne: ImageConstant.imgFloatingIcon,
          electricityTwo: "Electricity"),
      GridelectricityItemModel(
          electricityOne: ImageConstant.imgUser, electricityTwo: "Fuel"),
      GridelectricityItemModel(electricityTwo: "Infrastructure"),
      GridelectricityItemModel(electricityTwo: "Salary"),
      GridelectricityItemModel(electricityTwo: "Inventory"),
      GridelectricityItemModel(electricityTwo: "Pending bill")
    ];
  }
}
