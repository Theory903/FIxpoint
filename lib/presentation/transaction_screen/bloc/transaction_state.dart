part of 'transaction_bloc.dart';

/// Represents the state of Transaction in the application.

// ignore_for_file: must_be_immutable
class TransactionState extends Equatable {
  TransactionState({this.iphone3miniTab2ModelObj, this.transactionModelObj});

  TransactionModel? transactionModelObj;

  Iphone3miniTab2Model? iphone3miniTab2ModelObj;

  @override
  List<Object?> get props => [iphone3miniTab2ModelObj, transactionModelObj];
  TransactionState copyWith({
    Iphone3miniTab2Model? iphone3miniTab2ModelObj,
    TransactionModel? transactionModelObj,
  }) {
    return TransactionState(
      iphone3miniTab2ModelObj:
          iphone3miniTab2ModelObj ?? this.iphone3miniTab2ModelObj,
      transactionModelObj: transactionModelObj ?? this.transactionModelObj,
    );
  }
}
