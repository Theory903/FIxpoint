import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import '../models/outlet_model.dart';
import '../models/scrollview_tab1_model.dart';
import '../models/teammemberlist_item_model.dart';
part 'outlet_event.dart';
part 'outlet_state.dart';

/// A bloc that manages the state of a Outlet according to the event that is dispatched to it.
class OutletBloc extends Bloc<OutletEvent, OutletState> {
  OutletBloc(OutletState initialState) : super(initialState) {
    on<OutletInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OutletInitialEvent event,
    Emitter<OutletState> emit,
  ) async {
    emit(
      state.copyWith(
        scrollviewTab1ModelObj: state.scrollviewTab1ModelObj?.copyWith(
          teammemberlistItemList: fillTeammemberlistItemList(),
        ),
      ),
    );
  }

  List<TeammemberlistItemModel> fillTeammemberlistItemList() {
    return [
      TeammemberlistItemModel(
          rajuSharmaOne: ImageConstant.imgEllipse344x44,
          rajusharma: "Raju sharma",
          washing: "Washing"),
      TeammemberlistItemModel(
          rajuSharmaOne: ImageConstant.imgEllipse544x44,
          rajusharma: "Rajesh sharma",
          washing: "Mechanic"),
      TeammemberlistItemModel(
          rajuSharmaOne: ImageConstant.imgEllipse4,
          rajusharma: "Neha sharma",
          washing: "Manger"),
      TeammemberlistItemModel(
          rajuSharmaOne: ImageConstant.imgEllipse644x44,
          rajusharma: "Chandu sharma",
          washing: "Washing"),
      TeammemberlistItemModel(
          rajuSharmaOne: ImageConstant.imgEllipse4,
          rajusharma: "Meena sharma",
          washing: "Washing"),
      TeammemberlistItemModel(
          rajuSharmaOne: ImageConstant.imgEllipse544x44,
          rajusharma: "Raju sharma",
          washing: "Washing")
    ];
  }
}
