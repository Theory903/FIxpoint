import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../widgets/custom_icon_button.dart';
import './models/chart_one_chart_model.dart';
import 'bloc/transaction_bloc.dart';
import 'models/iphone3mini_tab2_model.dart';
import 'models/transactionlist_item_model.dart';
import 'widgets/transactionlist_item_widget.dart';

class Iphone3miniTab2Page extends StatefulWidget {
  const Iphone3miniTab2Page({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone3miniTab2PageState createState() => Iphone3miniTab2PageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TransactionBloc>(
      create: (context) => TransactionBloc(TransactionState(
        iphone3miniTab2ModelObj: Iphone3miniTab2Model(),
      ))
        ..add(TransactionInitialEvent()),
      child: Iphone3miniTab2Page(),
    );
  }
}

class Iphone3miniTab2PageState extends State<Iphone3miniTab2Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 24.h),
                child: Column(
                  children: [
                    SizedBox(
                      height: 176.h,
                      width: 324.h,
                      child: BlocBuilder<TransactionBloc, TransactionState>(
                        builder: (context, state) {
                          return LineChart(
                            LineChartData(
                              minX: 0,
                              minY: 0,
                              maxX: 7,
                              maxY: 5,
                              borderData: FlBorderData(show: false),
                              lineTouchData: LineTouchData(
                                enabled: true,
                                handleBuiltInTouches: true,
                                getTouchLineStart: (chartData, index) => 0.0,
                                getTouchLineEnd: (chartData, index) => 0.0,
                                touchTooltipData: LineTouchTooltipData(
                                  getTooltipItems: (spots) {
                                    return spots.map(
                                      (LineBarSpot touchedSpot) {
                                        final textStyle = TextStyle(
                                          color: touchedSpot
                                                  .bar.gradient?.colors.first ??
                                              touchedSpot.bar.color ??
                                              Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        );
                                        return LineTooltipItem(
                                          touchedSpot.y.toStringAsFixed(2),
                                          textStyle,
                                        );
                                      },
                                    ).toList();
                                  },
                                ),
                              ),
                              lineBarsData: List.generate(
                                state.iphone3miniTab2ModelObj
                                        ?.chartOneChartModelObj.length ??
                                    0,
                                (index) {
                                  var model = state.iphone3miniTab2ModelObj
                                          ?.chartOneChartModelObj[index] ??
                                      ChartOneChartModel();
                                  return LineChartBarData(
                                    isCurved: true,
                                    isStrokeCapRound: true,
                                    barWidth: model.barWidth,
                                    color: model.color,
                                    gradient: model.gradient,
                                    dotData: FlDotData(show: false),
                                    spots: model.spots,
                                  );
                                },
                              ),
                              gridData: FlGridData(
                                verticalInterval: 1,
                                horizontalInterval: 1,
                                drawHorizontalLine: false,
                                getDrawingVerticalLine: (value) {
                                  return FlLine(
                                    color: Color(0XFFF3F4F6),
                                    strokeWidth: 1,
                                  );
                                },
                              ),
                              titlesData: FlTitlesData(
                                rightTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                topTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    getTitlesWidget:
                                        (double value, TitleMeta meta) {
                                      var title = '';
                                      switch (value) {
                                        case 1:
                                          title = "S";
                                        case 2:
                                          title = "M";
                                        case 3:
                                          title = "T";
                                        case 4:
                                          title = "W";
                                        case 5:
                                          title = "T";
                                        case 6:
                                          title = "F";
                                        case 7:
                                          title = "S";
                                      }
                                      return Text(
                                        title,
                                        style: TextStyle(
                                          color: appTheme.gray60002,
                                          fontSize: 12.fSize,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                              ),
                            ),
                            duration: const Duration(
                              milliseconds: 500,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 48.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          _buildTransactionHeader(context),
                          SizedBox(height: 20.h),
                          _buildTransactionList(context),
                          SizedBox(height: 24.h),
                          _buildShippingRow(context),
                          SizedBox(height: 32.h),
                          _buildPaypalRow(context)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTransactionHeader(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_transaction".tr,
            style: CustomTextStyles.titleLargePrimary,
          ),
          Spacer(),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "lbl_all".tr,
              style: CustomTextStyles.titleSmallRobotoPrimary_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgChevronRightBlack900,
            height: 14.h,
            width: 16.h,
            margin: EdgeInsets.only(left: 4.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTransactionList(BuildContext context) {
    return BlocSelector<TransactionBloc, TransactionState,
        Iphone3miniTab2Model?>(
      selector: (state) => state.iphone3miniTab2ModelObj,
      builder: (context, iphone3miniTab2ModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.h),
              child: Divider(
                height: 1.h,
                thickness: 1.h,
                color: appTheme.gray100,
              ),
            );
          },
          itemCount:
              iphone3miniTab2ModelObj?.transactionlistItemList.length ?? 0,
          itemBuilder: (context, index) {
            TransactionlistItemModel model =
                iphone3miniTab2ModelObj?.transactionlistItemList[index] ??
                    TransactionlistItemModel();
            return TransactionlistItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildShippingRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 48.h,
            width: 48.h,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.fillGrayTL12,
            child: CustomImageView(
              imagePath: ImageConstant.imgMaterialSymbolOrange400,
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_shipping".tr,
                  style: CustomTextStyles.titleSmallRobotoPrimary,
                ),
                SizedBox(height: 2.h),
                Text(
                  "lbl_deposit".tr,
                  style: CustomTextStyles.labelLargeRoboto_1,
                )
              ],
            ),
          ),
          SizedBox(width: 16.h),
          Text(
            "lbl_rs_999".tr,
            style: CustomTextStyles.titleSmallRobotoPrimary,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaypalRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 48.h,
            width: 48.h,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.fillGrayTL12,
            child: CustomImageView(
              imagePath: ImageConstant.imgThumbsUpBlue300,
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_paypal".tr,
                  style: CustomTextStyles.titleSmallRobotoPrimary,
                ),
                SizedBox(height: 4.h),
                Text(
                  "lbl_freelance".tr,
                  style: CustomTextStyles.labelLargeRoboto_1,
                )
              ],
            ),
          ),
          SizedBox(width: 16.h),
          Text(
            "lbl_2_328_00".tr,
            textAlign: TextAlign.right,
            style: CustomTextStyles.titleSmallRoboto,
          )
        ],
      ),
    );
  }
}
