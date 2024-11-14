import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../domain/facebookauth/facebook_auth_helper.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../presentation/ownerdashboard_page/ownerdashboard_page.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/loginpage_bloc.dart';
import 'models/loginpage_model.dart';

// ignore_for_file: must_be_immutable
class LoginpageScreen extends StatelessWidget {
  LoginpageScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginpageBloc>(
      create: (context) => LoginpageBloc(LoginpageState(
        loginpageModelObj: LoginpageModel(),
      ))
        ..add(LoginpageInitialEvent()),
      child: LoginpageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray200,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 18.h,
                  top: 40.h,
                  right: 18.h,
                ),
                child: Column(
                  children: [
                    _buildSignInHeader(context),
                    SizedBox(height: 30.h),
                    Padding(
                      padding: EdgeInsets.only(right: 4.h),
                      child: _buildEmailField(context),
                    ),
                    SizedBox(height: 14.h),
                    Padding(
                      padding: EdgeInsets.only(right: 4.h),
                      child: _buildPasswordField(context),
                    ),
                    SizedBox(height: 10.h),
                    _buildForgotPasswordRow(context),
                    SizedBox(height: 42.h),
                    _buildSignInForm(context),
                    SizedBox(height: 16.h),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftBlack900,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.h,
          bottom: 8.h,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_owner".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInHeader(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 6.h,
        right: 4.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_let_s".tr,
                  style: CustomTextStyles.headlineMediumMedium,
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "lbl_sign_in".tr,
                  style: CustomTextStyles.headlineMediumOnSecondaryContainer,
                ),
                TextSpan(
                  text: "     ",
                )
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 20.h),
          Text(
            "msg_take_your_business".tr,
            style: CustomTextStyles.bodyMediumLatoBluegray600,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildForgotPasswordRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_forgot_password".tr,
            style: CustomTextStyles.labelLargeRalewayBlack900,
          ),
          Text(
            "lbl_show_password".tr,
            style: CustomTextStyles.labelLargeRalewayBlack900,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInForm(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 8.h,
        right: 12.h,
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.h),
                    child: Divider(
                      color: appTheme.gray500,
                    ),
                  ),
                ),
                SizedBox(width: 8.h),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_or_sign_up_with".tr,
                    style: CustomTextStyles.labelSmallRalewayGray500,
                  ),
                ),
                SizedBox(width: 8.h),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.h),
                    child: Divider(
                      color: appTheme.gray500,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomIconButton(
                height: 54.h,
                width: 98.h,
                padding: EdgeInsets.all(14.h),
                decoration: IconButtonStyleHelper.outlineGrayTL10,
                child: CustomImageView(
                  imagePath: ImageConstant.imgLogInAccount,
                ),
              ),
              SizedBox(width: 10.h),
              CustomIconButton(
                height: 54.h,
                width: 98.h,
                padding: EdgeInsets.all(14.h),
                decoration: IconButtonStyleHelper.outlineGrayTL10,
                onTap: () {
                  onTapBtnFacebookone(context);
                },
                child: CustomImageView(
                  imagePath: ImageConstant.imgFacebook,
                ),
              ),
              SizedBox(width: 10.h),
              CustomIconButton(
                height: 54.h,
                width: 98.h,
                padding: EdgeInsets.all(14.h),
                decoration: IconButtonStyleHelper.outlineGrayTL10,
                child: CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                ),
              )
            ],
          ),
          SizedBox(height: 98.h),
          CustomElevatedButton(
            text: "lbl_log_in".tr,
            buttonStyle: CustomButtonStyles.outlineBlueGray,
            onPressed: () {
              // Get email and password values
              final email =
                  context.read<LoginpageBloc>().state.emailController?.text;
              final password =
                  context.read<LoginpageBloc>().state.passwordController?.text;

              // Check if email and password match "admin"
              if (email == 'admin' && password == 'admin') {
                // Successful login action, e.g., navigate to home screen
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Login successful! Welcome, Admin.")),
                );
                NavigatorService.navigateTo(
                    OwnerdashboardPage()); // Adjust to your home screen
              } else {
                // Show error message if credentials are incorrect
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Invalid email or password")),
                );
              }
            },
          ),
          SizedBox(height: 26.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_don_t_have_an_account2".tr,
                  style: CustomTextStyles.bodyMediumTeal900,
                ),
                TextSpan(
                  text: "lbl_contact".tr,
                  style: CustomTextStyles.titleSmallOnSecondaryContainer_1,
                )
              ],
            ),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }

  /// Section Action
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Section Action
  onTapBtnFacebookone(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      onSuccessfulLogin(context);
    }).catchError((error) {
      onLoginError(context);
    });
  }

  /// Method to execute after login is successful
  void onSuccessfulLogin(BuildContext context) {
    NavigatorService.navigateTo(OwnerdashboardPage());
  }

  /// Method to execute if login error occurs
  void onLoginError(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Failed to login with Facebook.")),
    );
  }

  /// Email TextField Widget
  Widget _buildEmailField(BuildContext context) {
    return BlocSelector<LoginpageBloc, LoginpageState, TextEditingController?>(
      selector: (state) => state.emailController,
      builder: (context, emailController) {
        return CustomTextFormField(
          controller: emailController,
          labelText: "Email",  // Required 'labelText'
          hintText: "Enter your email", // Optional
          keyboardType: TextInputType.emailAddress,  // Required 'keyboardType'
          prefix: _buildPrefixIcon(imagePath: ImageConstant.imgLock),
          validator: (value) {
            if (value == null || !isValidEmail(value)) {
              return "Please enter a valid email";
            }
            return null;
          },
          suffixIcon: IconButton(
            icon: Icon(Icons.email),
            onPressed: () {},
          ), // Required 'suffixIcon'
        );
      },
    );
  }

  /// Password TextField Widget
  Widget _buildPasswordField(BuildContext context) {
    return BlocSelector<LoginpageBloc, LoginpageState, TextEditingController?>(
      selector: (state) => state.passwordController,
      builder: (context, passwordController) {
        return CustomTextFormField(
          controller: passwordController,
          labelText: "Password",  // Required 'labelText'
          hintText: "Enter your password", // Optional
          keyboardType: TextInputType.text,  // Required 'keyboardType'
          obscureText: true,
          prefix: _buildPrefixIcon(imagePath: ImageConstant.imgLocation),
          validator: (value) {
            if (value == null || !isValidPassword(value)) {
              return "Please enter a valid password";
            }
            return null;
          },
          suffixIcon: IconButton(
            icon: Icon(Icons.visibility_off),
            onPressed: () {},
          ), // Required 'suffixIcon'
        );
      },
    );
  }

  Widget _buildPrefixIcon({required String imagePath}) {
    return CustomImageView(
      imagePath: imagePath,
    );
  }
}
