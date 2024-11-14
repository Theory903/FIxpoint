import 'package:equatable/equatable.dart';
import 'chart_one_chart_model1.dart';
import 'metricslist_item_model.dart';

/// This class defines the variables used in the [iphone_13_mini_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class Iphone13MiniSevenModel extends Equatable {
  Iphone13MiniSevenModel(
      {this.metricslistItemList = const [],
      this.chartOneChartModel1Obj = const []});

  List<MetricslistItemModel> metricslistItemList;

  List<ChartOneChartModel1> chartOneChartModel1Obj;

  Iphone13MiniSevenModel copyWith({
    List<MetricslistItemModel>? metricslistItemList,
    List<ChartOneChartModel1>? chartOneChartModel1Obj,
  }) {
    return Iphone13MiniSevenModel(
      metricslistItemList: metricslistItemList ?? this.metricslistItemList,
      chartOneChartModel1Obj:
          chartOneChartModel1Obj ?? this.chartOneChartModel1Obj,
    );
  }

  @override
  List<Object?> get props => [metricslistItemList, chartOneChartModel1Obj];
}
