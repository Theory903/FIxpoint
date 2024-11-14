import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [transaction_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TransactionModel extends Equatable {
  TransactionModel();

  TransactionModel copyWith() {
    return TransactionModel();
  }

  @override
  List<Object?> get props => [];
}
