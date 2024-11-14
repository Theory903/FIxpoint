import 'package:equatable/equatable.dart';
import 'package:fixpoint/core/utils/image_constant.dart';

/// This class is used in the [paymentmethodslist_item_widget] screen.

// ignore_for_file: must_be_immutable
class PaymentmethodslistItemModel extends Equatable {
  PaymentmethodslistItemModel(
      {this.userOne, this.paypal, this.easypayment, this.paypalTwo, this.id}) {
    userOne = userOne ?? ImageConstant.imgUserIndigo800;
    paypal = paypal ?? "Paypal";
    easypayment = easypayment ?? "Easy payment";
    paypalTwo = paypalTwo ?? ImageConstant.imgCheckboxUnchecked;
    id = id ?? "";
  }

  String? userOne;

  String? paypal;

  String? easypayment;

  String? paypalTwo;

  String? id;

  PaymentmethodslistItemModel copyWith({
    String? userOne,
    String? paypal,
    String? easypayment,
    String? paypalTwo,
    String? id,
  }) {
    return PaymentmethodslistItemModel(
      userOne: userOne ?? this.userOne,
      paypal: paypal ?? this.paypal,
      easypayment: easypayment ?? this.easypayment,
      paypalTwo: paypalTwo ?? this.paypalTwo,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [userOne, paypal, easypayment, paypalTwo, id];
}
