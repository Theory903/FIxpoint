import 'package:equatable/equatable.dart';
import 'outletlist_item_model.dart';

/// This class is used in the [iphone_13_mini_four_initial_page] screen.

// ignore_for_file: must_be_immutable
class Iphone13MiniFourInitialModel extends Equatable {
  Iphone13MiniFourInitialModel({this.outletlistItemList = const []});

  List<OutletlistItemModel> outletlistItemList;

  Iphone13MiniFourInitialModel copyWith(
      {List<OutletlistItemModel>? outletlistItemList}) {
    return Iphone13MiniFourInitialModel(
      outletlistItemList: outletlistItemList ?? this.outletlistItemList,
    );
  }

  @override
  List<Object?> get props => [outletlistItemList];
}
