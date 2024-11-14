import 'package:equatable/equatable.dart';
import 'productlist_item_model.dart';

/// This class defines the variables used in the [ownerwishlist_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class OwnerwishlistModel extends Equatable {
  OwnerwishlistModel({this.productlistItemList = const []});

  List<ProductlistItemModel> productlistItemList;

  OwnerwishlistModel copyWith(
      {List<ProductlistItemModel>? productlistItemList}) {
    return OwnerwishlistModel(
      productlistItemList: productlistItemList ?? this.productlistItemList,
    );
  }

  @override
  List<Object?> get props => [productlistItemList];
}
