import 'package:fixpoint/core/app_export.dart';
import 'package:fixpoint/domain/facebookauth/facebook_auth_helper.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  // Text editing controllers for the email and password fields
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Rx variables to track login status, loading state, password visibility, and error messages
  var isLoggedIn = false.obs;
  var isLoading = false.obs;
  var isPasswordVisible = false.obs;
  var errorMessage = ''.obs;

  // Method to handle login logic
  Future<void> login() async {
    if (formKey.currentState?.validate() ?? false) {
      isLoading.value = true;
      try {
        final email = emailController.text.trim();
        final password = passwordController.text.trim();

        // Simulate a network call with a delay
        await Future.delayed(Duration(seconds: 2));

        // Replace this with your actual authentication logic
        if (email == 'admin' && password == 'admin') {
          isLoggedIn.value = true;
          errorMessage.value = '';
          // Navigate to Owner Dashboard or other logic
          Get.offAllNamed(AppRoutes.OwnerDashboardPage); // Adjust to your home screen
        } else {
          isLoggedIn.value = false;
          errorMessage.value = "Invalid email or password";
          Get.snackbar('Login Failed', errorMessage.value,
              snackPosition: SnackPosition.BOTTOM);
        }
      } catch (error) {
        isLoggedIn.value = false;
        errorMessage.value = "An error occurred during login.";
        Get.snackbar('Login Error', errorMessage.value,
            snackPosition: SnackPosition.BOTTOM);
      } finally {
        isLoading.value = false;
      }
    }
  }

  // Method to toggle password visibility
  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  // Facebook sign-in logic
  Future<void> signInWithFacebook() async {
    isLoading.value = true;
    try {
      await FacebookAuthHelper().facebookSignInProcess();
      // onSuccessfulLogin logic here
      isLoggedIn.value = true;
      errorMessage.value = '';
      Get.offAllNamed(AppRoutes.OwnerDashboardPage);
    } catch (error) {
      isLoggedIn.value = false;
      errorMessage.value = "Failed to login with Facebook.";
      Get.snackbar('Login Error', errorMessage.value,
          snackPosition: SnackPosition.BOTTOM);
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
