import 'package:equatable/equatable.dart';
import 'package:fixpoint/core/utils/image_constant.dart';

/// This class is used in the [outletlist_item_widget] screen.

// ignore_for_file: must_be_immutable
class OutletlistItemModel extends Equatable {
  OutletlistItemModel(
      {this.peopleCounter, this.outletoneOne, this.outletoneThree, this.id}) {
    peopleCounter = peopleCounter ?? "10 people";
    outletoneOne = outletoneOne ?? ImageConstant.imgIcRoundStarOutline;
    outletoneThree = outletoneThree ?? ImageConstant.imgGroup16;
    id = id ?? "";
  }

  String? peopleCounter;

  String? outletoneOne;

  String? outletoneThree;

  String? id;

  OutletlistItemModel copyWith({
    String? peopleCounter,
    String? outletoneOne,
    String? outletoneThree,
    String? id,
  }) {
    return OutletlistItemModel(
      peopleCounter: peopleCounter ?? this.peopleCounter,
      outletoneOne: outletoneOne ?? this.outletoneOne,
      outletoneThree: outletoneThree ?? this.outletoneThree,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [peopleCounter, outletoneOne, outletoneThree, id];
}
