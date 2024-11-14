import 'package:equatable/equatable.dart';
import 'package:fixpoint/core/utils/image_constant.dart';

/// This class is used in the [profilelist_item_widget] screen.

// ignore_for_file: must_be_immutable
class ProfilelistItemModel extends Equatable {
  ProfilelistItemModel({this.airplaneOne, this.referralcode, this.id}) {
    airplaneOne = airplaneOne ?? ImageConstant.imgAirplane;
    referralcode = referralcode ?? "Referral Code";
    id = id ?? "";
  }

  String? airplaneOne;

  String? referralcode;

  String? id;

  ProfilelistItemModel copyWith({
    String? airplaneOne,
    String? referralcode,
    String? id,
  }) {
    return ProfilelistItemModel(
      airplaneOne: airplaneOne ?? this.airplaneOne,
      referralcode: referralcode ?? this.referralcode,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [airplaneOne, referralcode, id];
}
