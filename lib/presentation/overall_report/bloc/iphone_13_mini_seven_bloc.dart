import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import 'package:fl_chart/fl_chart.dart';
import '../models/chart_one_chart_model1.dart';
import '../models/iphone_13_mini_seven_model.dart';
import '../models/metricslist_item_model.dart';
part 'iphone_13_mini_seven_event.dart';
part 'iphone_13_mini_seven_state.dart';

/// A bloc that manages the state of a Iphone13MiniSeven according to the event that is dispatched to it.
class Iphone13MiniSevenBloc
    extends Bloc<Iphone13MiniSevenEvent, Iphone13MiniSevenState> {
  Iphone13MiniSevenBloc(Iphone13MiniSevenState initialState)
      : super(initialState) {
    on<Iphone13MiniSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone13MiniSevenInitialEvent event,
    Emitter<Iphone13MiniSevenState> emit,
  ) async {
    emit(
      state.copyWith(
        iphone13MiniSevenModelObj: state.iphone13MiniSevenModelObj?.copyWith(
          metricslistItemList: fillMetricslistItemList(),
          chartOneChartModel1Obj: fillChartOneChartModel1Obj(),
        ),
      ),
    );
  }

  List<MetricslistItemModel> fillMetricslistItemList() {
    return [
      MetricslistItemModel(
          layerfourOne: ImageConstant.imgLayer4,
          totalrevenue: "Total Revenue",
          k: "Rs.56k",
          frameone: "+3,4%"),
      MetricslistItemModel(
          layerfourOne: ImageConstant.imgCalendar,
          totalrevenue: "Today Revenue",
          k: "Rs.102k",
          frameone: "-5,5%"),
      MetricslistItemModel(
          layerfourOne: ImageConstant.imgTelevisionOnsecondarycontainer,
          frameone: "11"),
      MetricslistItemModel()
    ];
  }

  List<ChartOneChartModel1> fillChartOneChartModel1Obj() {
    return [
      ChartOneChartModel1(
        barWidth: 1,
        color: theme.colorScheme.onSecondaryContainer,
        spots: [
          FlSpot(0.2, 2.0),
          FlSpot(0.07, 3.83),
          FlSpot(1.39, 1.41),
          FlSpot(2.05, 3.39),
          FlSpot(3.13, 3.08),
          FlSpot(4.4, 1.89),
          FlSpot(5.22, 4.57)
        ],
      )
    ];
  }
}
