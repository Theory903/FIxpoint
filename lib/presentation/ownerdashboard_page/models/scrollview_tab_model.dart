import 'package:equatable/equatable.dart';
import 'statisticslist_item_model.dart';

/// This class is used in the [scrollview_tab_page] screen.

// ignore_for_file: must_be_immutable
class ScrollviewTabModel extends Equatable {
  ScrollviewTabModel({this.statisticslistItemList = const []});

  List<StatisticslistItemModel> statisticslistItemList;

  ScrollviewTabModel copyWith(
      {List<StatisticslistItemModel>? statisticslistItemList}) {
    return ScrollviewTabModel(
      statisticslistItemList:
          statisticslistItemList ?? this.statisticslistItemList,
    );
  }

  @override
  List<Object?> get props => [statisticslistItemList];
}
