import 'package:equatable/equatable.dart';
import 'gridelectricity_item_model.dart';

/// This class defines the variables used in the [ownerbillpayment_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class OwnerbillpaymentModel extends Equatable {
  OwnerbillpaymentModel({this.gridelectricityItemList = const []});

  List<GridelectricityItemModel> gridelectricityItemList;

  OwnerbillpaymentModel copyWith(
      {List<GridelectricityItemModel>? gridelectricityItemList}) {
    return OwnerbillpaymentModel(
      gridelectricityItemList:
          gridelectricityItemList ?? this.gridelectricityItemList,
    );
  }

  @override
  List<Object?> get props => [gridelectricityItemList];
}
