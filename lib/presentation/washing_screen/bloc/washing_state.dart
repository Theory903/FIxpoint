part of 'washing_bloc.dart';

/// Represents the state of Washing in the application.

// ignore_for_file: must_be_immutable
class WashingState extends Equatable {
  WashingState({this.quantity = 1, this.washingModelObj});

  WashingModel? washingModelObj;

  int quantity;

  @override
  List<Object?> get props => [quantity, washingModelObj];
  WashingState copyWith({
    int? quantity,
    WashingModel? washingModelObj,
  }) {
    return WashingState(
      quantity: quantity ?? this.quantity,
      washingModelObj: washingModelObj ?? this.washingModelObj,
    );
  }
}
