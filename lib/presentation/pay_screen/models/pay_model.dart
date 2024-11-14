import 'package:equatable/equatable.dart';
import 'paymentmethodslist_item_model.dart';

/// This class defines the variables used in the [pay_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class PayModel extends Equatable {
  PayModel({this.paymentmethodslistItemList = const []});

  List<PaymentmethodslistItemModel> paymentmethodslistItemList;

  PayModel copyWith(
      {List<PaymentmethodslistItemModel>? paymentmethodslistItemList}) {
    return PayModel(
      paymentmethodslistItemList:
          paymentmethodslistItemList ?? this.paymentmethodslistItemList,
    );
  }

  @override
  List<Object?> get props => [paymentmethodslistItemList];
}
