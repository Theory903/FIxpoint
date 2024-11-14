import 'package:equatable/equatable.dart';
import 'package:fixpoint/core/app_export.dart';
import '../models/ownerwishlist_model.dart';
import '../models/productlist_item_model.dart';
part 'ownerwishlist_event.dart';
part 'ownerwishlist_state.dart';

/// A bloc that manages the state of a Ownerwishlist according to the event that is dispatched to it.
class OwnerwishlistBloc extends Bloc<OwnerwishlistEvent, OwnerwishlistState> {
  OwnerwishlistBloc(OwnerwishlistState initialState) : super(initialState) {
    on<OwnerwishlistInitialEvent>(_onInitialize);
    on<DecrementQuantityEvent>(_decrementQuantity);
    on<IncrementQuantityEvent>(_incrementQuantity);
  }

  _onInitialize(
    OwnerwishlistInitialEvent event,
    Emitter<OwnerwishlistState> emit,
  ) async {
    emit(
      state.copyWith(
        ownerwishlistModelObj: state.ownerwishlistModelObj?.copyWith(
          productlistItemList: fillProductlistItemList(),
        ),
      ),
    );
  }

  _decrementQuantity(
    DecrementQuantityEvent event,
    Emitter<OwnerwishlistState> emit,
  ) {
    final updatedList =
        state.ownerwishlistModelObj?.productlistItemList.map((item) {
      if (item == event.productlistItemModelObj) {
        final quantity = item.quantity ?? 1;
        item = item.copyWith(quantity: quantity > 1 ? quantity - 1 : 1);
      }
      return item;
    }).toList();
    emit(state.copyWith(
        ownerwishlistModelObj: state.ownerwishlistModelObj
            ?.copyWith(productlistItemList: updatedList)));
  }

  _incrementQuantity(
    IncrementQuantityEvent event,
    Emitter<OwnerwishlistState> emit,
  ) {
    final updatedList =
        state.ownerwishlistModelObj?.productlistItemList.map((item) {
      if (item == event.productlistItemModelObj) {
        final quantity = item.quantity ?? 1;
        item = item.copyWith(quantity: quantity + 1);
      }
      return item;
    }).toList();
    emit(state.copyWith(
        ownerwishlistModelObj: state.ownerwishlistModelObj
            ?.copyWith(productlistItemList: updatedList)));
  }

  List<ProductlistItemModel> fillProductlistItemList() {
    return [
      ProductlistItemModel(
          washing: ImageConstant.imgImage297,
          washing1: "Washing Equipment",
          toolsCounter: "4 tools",
          rs999: "Rs.999"),
      ProductlistItemModel(
          washing: ImageConstant.imgEf58faa9a71e47e,
          washing1: "Pipe",
          toolsCounter: "20pcs",
          rs999: "Rs.999"),
      ProductlistItemModel()
    ];
  }
}
