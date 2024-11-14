import 'package:equatable/equatable.dart';
import 'teammemberlist1_item_model.dart';

/// This class is used in the [scrollview_tab2_page] screen.

// ignore_for_file: must_be_immutable
class ScrollviewTab2Model extends Equatable {
  ScrollviewTab2Model({this.teammemberlist1ItemList = const []});

  List<Teammemberlist1ItemModel> teammemberlist1ItemList;

  ScrollviewTab2Model copyWith(
      {List<Teammemberlist1ItemModel>? teammemberlist1ItemList}) {
    return ScrollviewTab2Model(
      teammemberlist1ItemList:
          teammemberlist1ItemList ?? this.teammemberlist1ItemList,
    );
  }

  @override
  List<Object?> get props => [teammemberlist1ItemList];
}
