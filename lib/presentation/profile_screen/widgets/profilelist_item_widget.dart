import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/profilelist_item_model.dart';

// ignore_for_file: must_be_immutable
class ProfilelistItemWidget extends StatelessWidget {
  ProfilelistItemWidget(this.profilelistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ProfilelistItemModel profilelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 40.h,
          width: 40.h,
          padding: EdgeInsets.all(10.h),
          decoration: IconButtonStyleHelper.fillGrayTL12,
          child: CustomImageView(
            imagePath: profilelistItemModelObj.airplaneOne!,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(
            profilelistItemModelObj.referralcode!,
            style: CustomTextStyles.titleSmallRobotoIndigo90001_1,
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgChevronRight,
          height: 16.h,
          width: 18.h,
        )
      ],
    );
  }
}
