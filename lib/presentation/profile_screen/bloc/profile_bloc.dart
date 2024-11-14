import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import '../models/profile_model.dart';
import '../models/profilelist_item_model.dart';
part 'profile_event.dart';
part 'profile_state.dart';

/// A bloc that manages the state of a Profile according to the event that is dispatched to it.
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(ProfileState initialState) : super(initialState) {
    on<ProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileInitialEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        profileModelObj: state.profileModelObj?.copyWith(
          profilelistItemList: fillProfilelistItemList(),
        ),
      ),
    );
  }

  List<ProfilelistItemModel> fillProfilelistItemList() {
    return [
      ProfilelistItemModel(
          airplaneOne: ImageConstant.imgAirplane,
          referralcode: "Referral Code"),
      ProfilelistItemModel(
          airplaneOne: ImageConstant.imgSettingsIndigo900,
          referralcode: "Account Info"),
      ProfilelistItemModel(
          airplaneOne: ImageConstant.imgSettingsTeal400,
          referralcode: "Contact List"),
      ProfilelistItemModel(
          airplaneOne: ImageConstant.imgTablerLanguage,
          referralcode: "Language"),
      ProfilelistItemModel(
          airplaneOne: ImageConstant.imgSearchBlue300,
          referralcode: "General Setting"),
      ProfilelistItemModel(
          airplaneOne: ImageConstant.imgLocationDeepOrange100,
          referralcode: "Change Password"),
      ProfilelistItemModel(
          airplaneOne: ImageConstant.imgScan,
          referralcode: "Change Log In PIN"),
      ProfilelistItemModel(
          airplaneOne: ImageConstant.imgQuestionMark, referralcode: "FAQs")
    ];
  }
}
