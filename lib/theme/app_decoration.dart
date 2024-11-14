import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900.withOpacity(0.4),
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.3),
      );
  static BoxDecoration get fillBlack9001 => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray10002,
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange50,
      );
  static BoxDecoration get fillDeepOrangeAF => BoxDecoration(
        color: appTheme.deepOrangeA1007f,
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple100,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10002,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray90001 => BoxDecoration(
        color: appTheme.gray90001,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green50,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA100,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red100,
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow100,
      );
// Greyscale decorations
  static BoxDecoration get greyscale50 => BoxDecoration(
        color: appTheme.gray5001,
      );
// Others decorations
  static BoxDecoration get othersWhite => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.gray100,
          width: 1.h,
        ),
      );
// Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.08),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              21,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.02),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -7,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray10004,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlueGrayE => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray3001e,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              5,
              15,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBluegray10002 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray10002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray50 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.blueGray50,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray20001 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.gray20001,
          width: 0.5.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              1,
              1,
            ),
          )
        ],
      );
  static BoxDecoration get outlineGray200011 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.gray20001,
          width: 0.5.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              1,
              1,
            ),
          )
        ],
      );
  static BoxDecoration get outlineGray20002 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.gray20002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray30001 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.gray30001,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          )
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        60.h,
      );
// Custom borders
  static BorderRadius get customBorderBL14 => BorderRadius.only(
        topLeft: Radius.circular(4.h),
        topRight: Radius.circular(14.h),
        bottomLeft: Radius.circular(14.h),
        bottomRight: Radius.circular(4.h),
      );
  static BorderRadius get customBorderTL16 => BorderRadius.only(
        topLeft: Radius.circular(16.h),
        topRight: Radius.circular(16.h),
        bottomRight: Radius.circular(16.h),
      );
// Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get roundedBorder50 => BorderRadius.circular(
        50.h,
      );
}
