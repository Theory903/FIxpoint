import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import 'package:fl_chart/fl_chart.dart';
import '../models/chart_one_chart_model.dart';
import '../models/iphone3mini_tab2_model.dart';
import '../models/transaction_model.dart';
import '../models/transactionlist_item_model.dart';
part 'transaction_event.dart';
part 'transaction_state.dart';

/// A bloc that manages the state of a Transaction according to the event that is dispatched to it.
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc(TransactionState initialState) : super(initialState) {
    on<TransactionInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TransactionInitialEvent event,
    Emitter<TransactionState> emit,
  ) async {
    emit(
      state.copyWith(
        iphone3miniTab2ModelObj: state.iphone3miniTab2ModelObj?.copyWith(
          transactionlistItemList: fillTransactionlistItemList(),
          chartOneChartModelObj: fillChartOneChartModelObj(),
        ),
      ),
    );
  }

  List<TransactionlistItemModel> fillTransactionlistItemList() {
    return [
      TransactionlistItemModel(
          settingsOne: ImageConstant.imgSettingsGray900,
          salary: "Salary",
          payment: "Payment",
          rs999: "Rs.999"),
      TransactionlistItemModel(
          settingsOne: ImageConstant.imgSettingsGray900,
          salary: "Salary",
          payment: "Payment",
          rs999: "Rs.999"),
      TransactionlistItemModel(
          settingsOne: ImageConstant.imgIcRoundInventory,
          salary: "Inventory",
          payment: "Deposit",
          rs999: "Rs.999")
    ];
  }

  List<ChartOneChartModel> fillChartOneChartModelObj() {
    return [
      ChartOneChartModel(
        barWidth: 3,
        color: theme.colorScheme.onSecondaryContainer,
        spots: [
          FlSpot(0.2, 0.0),
          FlSpot(0.32, 4.25),
          FlSpot(1.54, 4.93),
          FlSpot(2.41, 4.95),
          FlSpot(3.71, 1.12),
          FlSpot(5.24, 3.87),
          FlSpot(5.87, 2.9)
        ],
      )
    ];
  }
}
