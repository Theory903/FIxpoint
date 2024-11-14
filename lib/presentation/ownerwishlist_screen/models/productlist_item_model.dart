import 'package:equatable/equatable.dart';
import 'package:fixpoint/core/utils/image_constant.dart';

/// This class is used in the [productlist_item_widget] screen.

// ignore_for_file: must_be_immutable
class ProductlistItemModel extends Equatable {
  ProductlistItemModel(
      {this.washing,
      this.washing1,
      this.toolsCounter,
      this.rs999,
      this.quantity,
      this.id}) {
    washing = washing ?? ImageConstant.imgImage297;
    washing1 = washing1 ?? "Washing Equipment";
    toolsCounter = toolsCounter ?? "4 tools";
    rs999 = rs999 ?? "Rs.999";
    quantity = quantity ?? 1;
    id = id ?? "";
  }

  String? washing;

  String? washing1;

  String? toolsCounter;

  String? rs999;

  int? quantity;

  String? id;

  ProductlistItemModel copyWith({
    String? washing,
    String? washing1,
    String? toolsCounter,
    String? rs999,
    int? quantity,
    String? id,
  }) {
    return ProductlistItemModel(
      washing: washing ?? this.washing,
      washing1: washing1 ?? this.washing1,
      toolsCounter: toolsCounter ?? this.toolsCounter,
      rs999: rs999 ?? this.rs999,
      quantity: quantity ?? this.quantity,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props =>
      [washing, washing1, toolsCounter, rs999, quantity, id];
}
