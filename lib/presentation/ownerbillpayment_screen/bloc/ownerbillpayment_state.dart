part of 'ownerbillpayment_bloc.dart';

/// Represents the state of Ownerbillpayment in the application.

// ignore_for_file: must_be_immutable
class OwnerbillpaymentState extends Equatable {
  OwnerbillpaymentState({this.ownerbillpaymentModelObj});

  OwnerbillpaymentModel? ownerbillpaymentModelObj;

  @override
  List<Object?> get props => [ownerbillpaymentModelObj];
  OwnerbillpaymentState copyWith(
      {OwnerbillpaymentModel? ownerbillpaymentModelObj}) {
    return OwnerbillpaymentState(
      ownerbillpaymentModelObj:
          ownerbillpaymentModelObj ?? this.ownerbillpaymentModelObj,
    );
  }
}
