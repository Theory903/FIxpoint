import 'package:equatable/equatable.dart';
import 'package:fixpoint/core/app_export.dart';

import '../models/pay_model.dart';
import '../models/paymentmethodslist_item_model.dart';

part 'pay_event.dart';
part 'pay_state.dart';

/// A bloc that manages the state of a Pay according to the event that is dispatched to it.
class PayBloc extends Bloc<PayEvent, PayState> {
  PayBloc(PayState initialState) : super(initialState) {
    on<PayInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PayInitialEvent event,
    Emitter<PayState> emit,
  ) async {
    emit(
      state.copyWith(
        payModelObj: state.payModelObj?.copyWith(
          paymentmethodslistItemList: fillPaymentmethodslistItemList(),
        ),
      ),
    );
  }

  List<PaymentmethodslistItemModel> fillPaymentmethodslistItemList() {
    return [
      PaymentmethodslistItemModel(
          userOne: ImageConstant.imgUserIndigo800,
          paypal: "Paypal",
          easypayment: "Easy payment",
          paypalTwo: ImageConstant.imgCheckboxUnchecked),
      PaymentmethodslistItemModel(
          userOne: ImageConstant.imgSettingsGray900,
          paypal: "Amazon pay",
          easypayment: "Easy payment",
          paypalTwo: ImageConstant.imgCheckboxUnchecked),
      PaymentmethodslistItemModel(
          paypal: "PayFast", easypayment: "Easy payment")
    ];
  }
}
