import 'package:equatable/equatable.dart';
import 'profilelist_item_model.dart';

/// This class defines the variables used in the [profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class ProfileModel extends Equatable {
  ProfileModel({this.profilelistItemList = const []});

  List<ProfilelistItemModel> profilelistItemList;

  ProfileModel copyWith({List<ProfilelistItemModel>? profilelistItemList}) {
    return ProfileModel(
      profilelistItemList: profilelistItemList ?? this.profilelistItemList,
    );
  }

  @override
  List<Object?> get props => [profilelistItemList];
}
