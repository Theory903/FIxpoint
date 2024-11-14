import 'package:equatable/equatable.dart';
import 'package:fixpoint/core/utils/image_constant.dart';

/// This class is used in the [transactionlist_item_widget] screen.

// ignore_for_file: must_be_immutable
class TransactionlistItemModel extends Equatable {
  TransactionlistItemModel(
      {this.settingsOne, this.salary, this.payment, this.rs999, this.id}) {
    settingsOne = settingsOne ?? ImageConstant.imgSettingsGray900;
    salary = salary ?? "Salary";
    payment = payment ?? "Payment";
    rs999 = rs999 ?? "Rs.999";
    id = id ?? "";
  }

  String? settingsOne;

  String? salary;

  String? payment;

  String? rs999;

  String? id;

  TransactionlistItemModel copyWith({
    String? settingsOne,
    String? salary,
    String? payment,
    String? rs999,
    String? id,
  }) {
    return TransactionlistItemModel(
      settingsOne: settingsOne ?? this.settingsOne,
      salary: salary ?? this.salary,
      payment: payment ?? this.payment,
      rs999: rs999 ?? this.rs999,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [settingsOne, salary, payment, rs999, id];
}
