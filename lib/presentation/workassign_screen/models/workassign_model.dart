import 'package:equatable/equatable.dart';
import 'contactlist_item_model.dart';

/// This class defines the variables used in the [workassign_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class WorkassignModel extends Equatable {
  WorkassignModel({this.contactlistItemList = const []});

  List<ContactlistItemModel> contactlistItemList;

  WorkassignModel copyWith({List<ContactlistItemModel>? contactlistItemList}) {
    return WorkassignModel(
      contactlistItemList: contactlistItemList ?? this.contactlistItemList,
    );
  }

  @override
  List<Object?> get props => [contactlistItemList];
}
