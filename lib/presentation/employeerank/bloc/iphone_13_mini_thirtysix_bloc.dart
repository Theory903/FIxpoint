import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import '../models/iphone_13_mini_thirtysix_model.dart';
import '../models/scrollview_tab2_model.dart';
import '../models/teammemberlist1_item_model.dart';
part 'iphone_13_mini_thirtysix_event.dart';
part 'iphone_13_mini_thirtysix_state.dart';

/// A bloc that manages the state of a Iphone13MiniThirtysix according to the event that is dispatched to it.
class Iphone13MiniThirtysixBloc
    extends Bloc<Iphone13MiniThirtysixEvent, Iphone13MiniThirtysixState> {
  Iphone13MiniThirtysixBloc(Iphone13MiniThirtysixState initialState)
      : super(initialState) {
    on<Iphone13MiniThirtysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone13MiniThirtysixInitialEvent event,
    Emitter<Iphone13MiniThirtysixState> emit,
  ) async {
    emit(
      state.copyWith(
        scrollviewTab2ModelObj: state.scrollviewTab2ModelObj?.copyWith(
          teammemberlist1ItemList: fillTeammemberlist1ItemList(),
        ),
      ),
    );
  }

  List<Teammemberlist1ItemModel> fillTeammemberlist1ItemList() {
    return [
      Teammemberlist1ItemModel(
          rajuSharmaOne: ImageConstant.imgEllipse344x44,
          rajusharma: "Raju sharma",
          washing: "Washing"),
      Teammemberlist1ItemModel(
          rajuSharmaOne: ImageConstant.imgEllipse544x44,
          rajusharma: "Rajesh sharma",
          washing: "Mechanic"),
      Teammemberlist1ItemModel(
          rajuSharmaOne: ImageConstant.imgEllipse4,
          rajusharma: "Neha sharma",
          washing: "Manger"),
      Teammemberlist1ItemModel(
          rajuSharmaOne: ImageConstant.imgEllipse644x44,
          rajusharma: "Chandu sharma",
          washing: "Washing"),
      Teammemberlist1ItemModel(
          rajuSharmaOne: ImageConstant.imgEllipse4,
          rajusharma: "Meena sharma",
          washing: "Washing"),
      Teammemberlist1ItemModel(
          rajuSharmaOne: ImageConstant.imgEllipse544x44,
          rajusharma: "Raju sharma",
          washing: "Washing")
    ];
  }
}
