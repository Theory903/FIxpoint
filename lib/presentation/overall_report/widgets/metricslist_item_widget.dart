// lib/presentation/overall_report/widgets/metricslist_item_widget.dart

import 'package:flutter/material.dart';
import '../models/metricslist_item_model.dart';
import '../../../core/app_export.dart'; // Adjust the import path as needed

class MetricslistItemWidget extends StatelessWidget {
  final MetricslistItemModel metricslistItemModelObj;

  const MetricslistItemWidget(
    this.metricslistItemModelObj, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { // Assuming you have an AppTheme class and a method to get it from context
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          // Image.asset(
          //   metricslistItemModelObj.layerFourOne,
          //   height: 40.h,
          //   width: 40.h,
          // ),
          SizedBox(width: 12.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                metricslistItemModelObj.totalRevenue,
                style: TextStyle(
                  fontSize: 16.fSize,
                  fontWeight: FontWeight.bold,
                  color: appTheme.gray900,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                metricslistItemModelObj.kValue,
                style: TextStyle(
                  fontSize: 14.fSize,
                  color: appTheme.gray600,
                ),
              ),
            ],
          ),
          Spacer()
        ],
      ),
    );
  }
}
