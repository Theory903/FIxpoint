import 'package:equatable/equatable.dart';
import 'teammemberlist_item_model.dart';

/// This class is used in the [scrollview_tab1_page] screen.

// ignore_for_file: must_be_immutable
class ScrollviewTab1Model extends Equatable {
  ScrollviewTab1Model({this.teammemberlistItemList = const []});

  List<TeammemberlistItemModel> teammemberlistItemList;

  ScrollviewTab1Model copyWith(
      {List<TeammemberlistItemModel>? teammemberlistItemList}) {
    return ScrollviewTab1Model(
      teammemberlistItemList:
          teammemberlistItemList ?? this.teammemberlistItemList,
    );
  }

  @override
  List<Object?> get props => [teammemberlistItemList];
}
