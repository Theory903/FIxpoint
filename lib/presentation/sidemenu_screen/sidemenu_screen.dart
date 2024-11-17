import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_switch.dart';
import 'controllers/sidemenu_controller.dart';

class SidemenuScreen extends StatelessWidget {
  final SidemenuController controller = Get.put(SidemenuController());

  SidemenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 48.0),
              decoration: BoxDecoration(
                color: theme.colorScheme.onErrorContainer,
              ),
              child: Column(
                children: [
                  CustomIconButton(
                    height: 48.0,
                    width: 50.0,
                    padding: EdgeInsets.all(10.0),
                    decoration: IconButtonStyleHelper.fillGray,
                    alignment: Alignment.centerLeft,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMenuSecondarycontainer,
                    ),
                  ),
                  const SizedBox(height: 22.0),
                  _buildProfileSection(context),
                  const SizedBox(height: 44.0),
                  _buildDarkModeSection(context),
                  const SizedBox(height: 30.0),
                  _buildMenuSection(
                    context,
                    icon: ImageConstant.imgMdiBellNotificationOutline,
                    label: "lbl_notification".tr,
                    onTap: () => onTapNotificationSection(),
                  ),
                  const SizedBox(height: 34.0),
                  _buildMenuSection(
                    context,
                    icon: ImageConstant.imgWallet,
                    label: "lbl_bill_payment".tr,
                    onTap: () => onTapBillPaymentSection(),
                  ),
                  const SizedBox(height: 34.0),
                  _buildMenuSection(
                    context,
                    icon: ImageConstant.imgHeart,
                    label: "lbl_wishlist".tr,
                    onTap: () => onTapWishlist(),
                  ),
                  const SizedBox(height: 22.0),
                  _buildMenuSection(
                    context,
                    icon: ImageConstant.imgIconParkOutlineSettingTwo,
                    label: "lbl_settings".tr,
                    onTap: () => onTapSettings(),
                  ),
                  const SizedBox(height: 188.0),
                  _buildLogoutSection(context),
                  const SizedBox(height: 128.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgProfilePicture,
            height: 40.0,
            width: 44.0,
            radius: BorderRadius.circular(20.0),
          ),
          const SizedBox(width: 18.0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.sidemenuModelObj.value.profileName.tr,
                    style: CustomTextStyles.titleMediumRobotoBlack900,
                  ),
                  Text(
                    controller.sidemenuModelObj.value.location.tr,
                    style: CustomTextStyles.bodyMediumRobotoGray70003,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 18.0),
          CustomElevatedButton(
            height: 32.0,
            width: 62.0,
            text: controller.sidemenuModelObj.value.outletInfo.tr,
            margin: const EdgeInsets.only(bottom: 4.0),
            buttonStyle: CustomButtonStyles.fillGray,
            buttonTextStyle: CustomTextStyles.labelMediumGray50004,
          )
        ],
      ),
    );
  }

  Widget _buildDarkModeSection(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgSun,
          height: 24.0,
          width: 26.0,
        ),
        const SizedBox(width: 10.0),
        Text(
          "lbl_dark_mode".tr,
          style: theme.textTheme.bodyMedium,
        ),
        Spacer(),
        Obx(() {
          return CustomSwitch(
            value: controller.isDarkMode.value,
            onChange: (value) => controller.toggleDarkMode(value),
          );
        }),
      ],
    );
  }

  Widget _buildMenuSection(BuildContext context, {required String icon, required String label, Function()? onTap}) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          CustomImageView(
            imagePath: icon,
            height: 24.0,
            width: 24.0,
          ),
          const SizedBox(width: 10.0),
          Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.secondaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogoutSection(BuildContext context) {
    return GestureDetector(
      onTap: () => onTapLogoutSection(),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClock,
            height: 24.0,
            width: 24.0,
          ),
          const SizedBox(width: 10.0),
          Text(
            "lbl_logout".tr,
            style: CustomTextStyles.titleSmallRedA20001,
          ),
        ],
      ),
    );
  }

  void onTapNotificationSection() => Get.toNamed(AppRoutes.OwnerNotificationScreen);
  void onTapBillPaymentSection() => Get.toNamed(AppRoutes.ownerbillpaymentScreen);
  void onTapWishlist() => Get.toNamed(AppRoutes.ownerwishlistScreen);
  void onTapSettings() => Get.toNamed(AppRoutes.generalSettingScreen); // Adjust if necessary
  void onTapLogoutSection() => Get.offAllNamed(AppRoutes.loginChoiceScreen);
}
