import 'metricslist_item_model.dart';
import 'chart_one_chart_model1.dart';

class OverallReportModel {
  List<MetricslistItemModel> metricslistItemList;
  List<ChartOneChartModel1> chartOneChartModel1Obj;

  OverallReportModel({
    this.metricslistItemList = const [],
    this.chartOneChartModel1Obj = const [],
  });
}
