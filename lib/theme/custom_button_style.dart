import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray10004,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
        elevation: 0,
        padding: EdgeInsets.zero,
      );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray10003,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
        elevation: 0,
        padding: EdgeInsets.zero,
      );
  static ButtonStyle get fillGrayTL5 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray90004,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
        elevation: 0,
        padding: EdgeInsets.zero,
      );
  static ButtonStyle get fillGrayTL6 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray40035,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
        elevation: 0,
        padding: EdgeInsets.zero,
      );
  static ButtonStyle get fillOnErrorContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onErrorContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
        elevation: 0,
        padding: EdgeInsets.zero,
      );
  static ButtonStyle get fillOnSecondaryContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onSecondaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.h),
        ),
        elevation: 0,
        padding: EdgeInsets.zero,
      );
  static ButtonStyle get fillPrimaryTL24 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.h),
        ),
        elevation: 0,
        padding: EdgeInsets.zero,
      );
  static ButtonStyle get fillPrimaryTL8 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
        elevation: 0,
        padding: EdgeInsets.zero,
      );
// Outline button style
  static ButtonStyle get outlineBlack => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onErrorContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
        shadowColor: appTheme.black900.withOpacity(0.25),
        elevation: 2,
        padding: EdgeInsets.zero,
      );
  static ButtonStyle get outlineBlueGray => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
        shadowColor: appTheme.blueGray80054,
        elevation: 9,
        padding: EdgeInsets.zero,
      );
// text button style
  static ButtonStyle get none => ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
      elevation: WidgetStateProperty.all<double>(0),
      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
      side: WidgetStateProperty.all<BorderSide>(
        BorderSide(color: Colors.transparent),
      ));
}
