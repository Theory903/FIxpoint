import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

// ignore_for_file: must_be_immutable
class ChartOneChartModel {
  ChartOneChartModel(
      {this.barWidth = 2,
      this.color,
      this.gradient,
      this.spots = const <FlSpot>[]});

  double barWidth = 2;

  Color? color;

  Gradient? gradient;

  List<FlSpot> spots;
}
