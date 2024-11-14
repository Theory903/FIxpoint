import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'models/chart_one_chart_model1.dart';
import 'bloc/iphone_13_mini_seven_bloc.dart';
import 'models/iphone_13_mini_seven_model.dart';
import 'models/metricslist_item_model.dart';
import 'widgets/metricslist_item_widget.dart';

class OverallReportScreen extends StatelessWidget {
  const OverallReportScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniSevenBloc>(
      create: (context) => Iphone13MiniSevenBloc(Iphone13MiniSevenState(
        iphone13MiniSevenModelObj: Iphone13MiniSevenModel(),
      ))
        ..add(Iphone13MiniSevenInitialEvent()),
      child: OverallReportScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              height: 852.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.all(28.h),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onErrorContainer,
                      borderRadius: BorderRadiusStyle.roundedBorder40,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.h),
                        _buildMetricsList(context)
                      ],
                    ),
                  ),
                  _buildOverviewSection(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftBlack900,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.h,
          bottom: 8.h,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "lbl_outlet2".tr,
              style: theme.textTheme.titleLarge,
            ),
            TextSpan(
              text: "lbl_12".tr,
              style: CustomTextStyles.titleSmallRobotoBold_1,
            )
          ],
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  /// Section Widget
  Widget _buildMetricsList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 36.h),
      child: BlocSelector<Iphone13MiniSevenBloc, Iphone13MiniSevenState,
          Iphone13MiniSevenModel?>(
        selector: (state) => state.iphone13MiniSevenModelObj,
        builder: (context, iphone13MiniSevenModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 10.h,
              );
            },
            itemCount:
                iphone13MiniSevenModelObj?.metricslistItemList.length ?? 0,
            itemBuilder: (context, index) {
              MetricslistItemModel model =
                  iphone13MiniSevenModelObj?.metricslistItemList[index] ??
                      MetricslistItemModel();
              return MetricslistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildChartone(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 154.h,
        width: 524.h,
        child: BlocBuilder<Iphone13MiniSevenBloc, Iphone13MiniSevenState>(
          builder: (context, state) {
            return LineChart(
              LineChartData(
                minX: 0,
                minY: 0,
                maxX: 6,
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
                            color: touchedSpot.bar.gradient?.colors.first ??
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
                  state.iphone13MiniSevenModelObj?.chartOneChartModel1Obj
                          .length ??
                      0,
                  (index) {
                    var model = state.iphone13MiniSevenModelObj
                            ?.chartOneChartModel1Obj[index] ??
                        ChartOneChartModel1();
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
                      color: Color(0XFF202020),
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
                      getTitlesWidget: (double value, TitleMeta meta) {
                        var title = '';
                        switch (value) {
                          case 1:
                            title = "Apr";
                          case 2:
                            title = "May";
                          case 3:
                            title = "Jun";
                          case 4:
                            title = "Jul";
                          case 5:
                            title = "Aug";
                          case 6:
                            title = "Sep";
                        }
                        return Text(
                          title,
                          style: TextStyle(
                            color: theme.colorScheme.onSecondaryContainer
                                .withOpacity(0.6),
                            fontSize: 13.fSize,
                            fontFamily: 'SF Pro Display',
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
    );
  }

  /// Section Widget
  Widget _buildOverviewSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 40.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: IntrinsicWidth(
                child: SizedBox(
                  height: 172.h,
                  width: 524.h,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVector83,
                        height: 172.h,
                        width: 376.h,
                      ),
                      _buildChartone(context)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 56.h),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                left: 32.h,
                right: 16.h,
              ),
              padding: EdgeInsets.only(
                left: 14.h,
                top: 14.h,
                bottom: 14.h,
              ),
              decoration: BoxDecoration(
                color: theme.colorScheme.onErrorContainer,
                borderRadius: BorderRadiusStyle.roundedBorder4,
                border: Border.all(
                  color: appTheme.gray30001,
                  width: 1.h,
                ),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.black900.withOpacity(0.1),
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      0,
                      1,
                    ),
                  )
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_get_overall_report".tr,
                    style: CustomTextStyles.labelLargeBluegray90005_1,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}