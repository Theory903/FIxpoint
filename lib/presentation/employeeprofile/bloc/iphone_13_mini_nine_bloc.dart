import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import '../models/iphone_13_mini_nine_model.dart';
import '../models/tasklist_item_model.dart';
part 'iphone_13_mini_nine_event.dart';
part 'iphone_13_mini_nine_state.dart';

/// A bloc that manages the state of a Iphone13MiniNine according to the event that is dispatched to it.
class Iphone13MiniNineBloc
    extends Bloc<Iphone13MiniNineEvent, Iphone13MiniNineState> {
  Iphone13MiniNineBloc(Iphone13MiniNineState initialState)
      : super(initialState) {
    on<Iphone13MiniNineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone13MiniNineInitialEvent event,
    Emitter<Iphone13MiniNineState> emit,
  ) async {
    emit(
      state.copyWith(
        iphone13MiniNineModelObj: state.iphone13MiniNineModelObj?.copyWith(
          tasklistItemList: fillTasklistItemList(),
        ),
      ),
    );
  }

  List<TasklistItemModel> fillTasklistItemList() {
    return [
      TasklistItemModel(
          attendanceOne: ImageConstant.imgSimpleLineIconsCalender,
          attendanceTwo: "Attendance",
          sixty: "37/60"),
      TasklistItemModel(
          attendanceOne: ImageConstant.imgIcRoundStarOrange500,
          attendanceTwo: "Rating",
          sixty: "4.5"),
      TasklistItemModel(),
      TasklistItemModel(),
      TasklistItemModel()
    ];
  }
}
