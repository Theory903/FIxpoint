// landing_screen.dart
import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/landing_bloc.dart';
import 'models/landing_model.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LandingBloc>(
      create: (context) => LandingBloc()..add(LandingInitialEvent()),  // Initialize without parameters
      child: const LandingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LandingBloc, LandingState>(
      listener: (context, state) {
        if (state is LandingNavigationState) {
          Navigator.pushNamed(context, state.destination);
        }
      },
      child: BlocBuilder<LandingBloc, LandingState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: appTheme.gray10002,
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: Column(
                    children: [
                      SizedBox(height: 50.h),
                      _buildImageSection(),
                      SizedBox(height: 62.h),
                      _buildExperienceSection(context),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  /// Builds the image section at the top of the screen.
  Widget _buildImageSection() {
    return CustomImageView(
      imagePath: ImageConstant.imgFreeShippingPana,
      height: 192.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 10.h),
    );
  }

  /// Builds the experience text and button section.
  Widget _buildExperienceSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 286.h,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_experience_the".tr,
                  style: theme.textTheme.displayMedium,
                ),
                TextSpan(
                  text: "msg_easier_way_for_service".tr,
                  style: CustomTextStyles.displayMediumOnSecondaryContainer
                      .copyWith(decoration: TextDecoration.underline),
                ),
              ],
            ),
            textAlign: TextAlign.left,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(height: 14.h),
        Text(
          "msg_one_stop_solution".tr,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: CustomTextStyles.bodyLargeInterGray600,
        ),
        SizedBox(height: 30.h),
        CustomElevatedButton(
          text: "lbl_get_started".tr,
          margin: EdgeInsets.symmetric(horizontal: 62.h),
          buttonStyle: CustomButtonStyles.outlineBlueGray,
          onPressed: () => _onTapGetStarted(context),
        ),
      ],
    );
  }

  /// Navigates to the login choice screen.
  void _onTapGetStarted(BuildContext context) {
    context.read<LandingBloc>().add(LandingNavigateToLoginChoiceEvent());
  }
}