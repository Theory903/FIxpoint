import 'package:equatable/equatable.dart';
import 'package:fixpoint/core/utils/image_constant.dart';

/// This class is used in the [gridelectricity_item_widget] screen.

// ignore_for_file: must_be_immutable
class GridelectricityItemModel extends Equatable {
  GridelectricityItemModel(
      {this.electricityOne, this.electricityTwo, this.id}) {
    electricityOne = electricityOne ?? ImageConstant.imgFloatingIcon;
    electricityTwo = electricityTwo ?? "Electricity";
    id = id ?? "";
  }

  String? electricityOne;

  String? electricityTwo;

  String? id;

  GridelectricityItemModel copyWith({
    String? electricityOne,
    String? electricityTwo,
    String? id,
  }) {
    return GridelectricityItemModel(
      electricityOne: electricityOne ?? this.electricityOne,
      electricityTwo: electricityTwo ?? this.electricityTwo,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [electricityOne, electricityTwo, id];
}
