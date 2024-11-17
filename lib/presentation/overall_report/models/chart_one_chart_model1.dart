import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ChartOneChartModel1 {
  final double barWidth;
  final Color color;
  final Gradient? gradient;
  final List<FlSpot> spots;

  ChartOneChartModel1({
    required this.barWidth,
    required this.color,
    this.gradient,
    required this.spots,
  });
}
