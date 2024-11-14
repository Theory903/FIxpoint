import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import '../models/extralabellist_item_model.dart';
import '../models/iphone13mini_tab_model.dart';
import '../models/schedule_model.dart';
part 'schedule_event.dart';
part 'schedule_state.dart';

/// A bloc that manages the state of a Schedule according to the event that is dispatched to it.
class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  ScheduleBloc(ScheduleState initialState) : super(initialState) {
    on<ScheduleInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScheduleInitialEvent event,
    Emitter<ScheduleState> emit,
  ) async {
    emit(
      state.copyWith(
        iphone13miniTabModelObj: state.iphone13miniTabModelObj?.copyWith(
          extralabellistItemList: fillExtralabellistItemList(),
        ),
      ),
    );
  }

  List<ExtralabellistItemModel> fillExtralabellistItemList() {
    return [
      ExtralabellistItemModel(
          extralabel: "Washing ",
          extralabelOne: "Washing ",
          smalllabel: "interactive design",
          smalllabelOne: "interactive design",
          smallsemibold: "task 1/10",
          smallsemibold1: "10%",
          smallsemibold2: "task 1/10",
          smallsemibold3: "10%",
          defaultlabel: "deadline 24 may 2022",
          defaultlabel1: "deadline 24 may 2022"),
      ExtralabellistItemModel(
          smalllabel: "interactive design",
          smalllabelOne: "interactive design",
          smallsemibold: "task 1/10",
          smallsemibold1: "10%",
          smallsemibold2: "task 1/10",
          smallsemibold3: "10%",
          defaultlabel: "deadline 24 may 2022",
          defaultlabel1: "deadline 24 may 2022"),
      ExtralabellistItemModel(),
      ExtralabellistItemModel()
    ];
  }
}
