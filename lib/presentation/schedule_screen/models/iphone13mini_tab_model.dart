import 'package:equatable/equatable.dart';
import 'extralabellist_item_model.dart';

/// This class is used in the [iphone13mini_tab_page] screen.

// ignore_for_file: must_be_immutable
class Iphone13miniTabModel extends Equatable {
  Iphone13miniTabModel({this.extralabellistItemList = const []});

  List<ExtralabellistItemModel> extralabellistItemList;

  Iphone13miniTabModel copyWith(
      {List<ExtralabellistItemModel>? extralabellistItemList}) {
    return Iphone13miniTabModel(
      extralabellistItemList:
          extralabellistItemList ?? this.extralabellistItemList,
    );
  }

  @override
  List<Object?> get props => [extralabellistItemList];
}
