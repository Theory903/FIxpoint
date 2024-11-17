// lib/presentation/overall_report/controllers/overall_report_controller.dart

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../models/overall_report_model.dart';
import '../models/metricslist_item_model.dart';
import '../models/chart_one_chart_model1.dart';

class OverallReportController extends GetxController {
  var overallReportModelObj = OverallReportModel().obs;

  @override
  void onInit() {
    super.onInit();
    loadInitialData();
  }

  void loadInitialData() {
    overallReportModelObj.update((model) {
      model?.metricslistItemList = [
        MetricslistItemModel(
          totalRevenue: 'Total Revenue',
          kValue: '\$100k',
        ),
        MetricslistItemModel(
          totalRevenue: 'Total Orders',
          kValue: '200k',
        ),
        // Add more items as needed
      ];

      model?.chartOneChartModel1Obj = [
        ChartOneChartModel1(
          barWidth: 4.0,
          color: Colors.blue,
          spots: [
            FlSpot(0, 1),
            FlSpot(1, 1.5),
            FlSpot(2, 1.4),
            FlSpot(3, 3.4),
            FlSpot(4, 2.0),
            FlSpot(5, 2.2),
            FlSpot(6, 1.8),
          ],
        ),
        // Add more chart data as needed
      ];
    });
  }
}
