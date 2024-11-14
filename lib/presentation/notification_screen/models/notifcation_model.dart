import 'package:equatable/equatable.dart';
import 'listtask_item_model.dart';
import 'receivedsection_item_model.dart';

/// This class defines the variables used in the [notifcation_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class NotifcationModel extends Equatable {
  NotifcationModel(
      {this.listtaskItemList = const [],
      this.receivedsectionItemList = const []});

  List<ListtaskItemModel> listtaskItemList;

  List<ReceivedsectionItemModel> receivedsectionItemList;

  NotifcationModel copyWith({
    List<ListtaskItemModel>? listtaskItemList,
    List<ReceivedsectionItemModel>? receivedsectionItemList,
  }) {
    return NotifcationModel(
      listtaskItemList: listtaskItemList ?? this.listtaskItemList,
      receivedsectionItemList:
          receivedsectionItemList ?? this.receivedsectionItemList,
    );
  }

  @override
  List<Object?> get props => [listtaskItemList, receivedsectionItemList];
}
