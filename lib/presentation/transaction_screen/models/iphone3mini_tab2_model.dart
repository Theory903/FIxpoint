import 'package:equatable/equatable.dart';
import 'chart_one_chart_model.dart';
import 'transactionlist_item_model.dart';

/// This class is used in the [iphone3mini_tab2_page] screen.

// ignore_for_file: must_be_immutable
class Iphone3miniTab2Model extends Equatable {
  Iphone3miniTab2Model(
      {this.chartOneChartModelObj = const [],
      this.transactionlistItemList = const []});

  List<ChartOneChartModel> chartOneChartModelObj;

  List<TransactionlistItemModel> transactionlistItemList;

  Iphone3miniTab2Model copyWith({
    List<ChartOneChartModel>? chartOneChartModelObj,
    List<TransactionlistItemModel>? transactionlistItemList,
  }) {
    return Iphone3miniTab2Model(
      chartOneChartModelObj:
          chartOneChartModelObj ?? this.chartOneChartModelObj,
      transactionlistItemList:
          transactionlistItemList ?? this.transactionlistItemList,
    );
  }

  @override
  List<Object?> get props => [chartOneChartModelObj, transactionlistItemList];
}
