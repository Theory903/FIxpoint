import 'package:equatable/equatable.dart';
import 'package:get/get.dart';
import 'package:fixpoint/core/utils/image_constant.dart';

/// This class is used in the [outletlist_item_widget] screen.
// ignore: must_be_immutable
class OutletlistItemModel extends Equatable {
  // Make fields reactive using Rx
  Rx<String> peopleCounter = Rx<String>("10 people");
  Rx<String> outletoneOne = Rx<String>(ImageConstant.imgIcRoundStarOutline);
  Rx<String> outletoneThree = Rx<String>(ImageConstant.imgGroup16);
  Rx<String> id = Rx<String>("");

  OutletlistItemModel({
    String? peopleCounter,
    String? outletoneOne,
    String? outletoneThree,
    String? id,
  }) {
    this.peopleCounter.value = peopleCounter ?? "10 people";
    this.outletoneOne.value = outletoneOne ?? ImageConstant.imgIcRoundStarOutline;
    this.outletoneThree.value = outletoneThree ?? ImageConstant.imgGroup16;
    this.id.value = id ?? "";
  }

  // Create a copyWith method for updating values
  OutletlistItemModel copyWith({
    String? peopleCounter,
    String? outletoneOne,
    String? outletoneThree,
    String? id,
  }) {
    return OutletlistItemModel(
      peopleCounter: peopleCounter ?? this.peopleCounter.value,
      outletoneOne: outletoneOne ?? this.outletoneOne.value,
      outletoneThree: outletoneThree ?? this.outletoneThree.value,
      id: id ?? this.id.value,
    );
  }

  @override
  List<Object?> get props => [peopleCounter.value, outletoneOne.value, outletoneThree.value, id.value];
}
