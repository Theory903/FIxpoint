import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green5001,
        borderRadius: BorderRadius.circular(14.h),
      );
  static BoxDecoration get outlineGrayTL10 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: appTheme.gray500,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10003,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(
            22.h,
          ),
        ),
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo400.withOpacity(0.05),
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillGrayTL12 => BoxDecoration(
        color: appTheme.gray5001,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillDeepPurpleAF => BoxDecoration(
        color: appTheme.deepPurpleA1007f,
        borderRadius: BorderRadius.circular(14.h),
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA100,
        borderRadius: BorderRadius.circular(14.h),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray10002.withOpacity(0.25),
        borderRadius: BorderRadius.circular(14.h),
      );
  static BoxDecoration get fillGrayF => BoxDecoration(
        color: appTheme.gray5003f,
        borderRadius: BorderRadius.circular(14.h),
      );
  static BoxDecoration get fillGrayTL24 => BoxDecoration(
        color: appTheme.gray5001,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen100,
        borderRadius: BorderRadius.circular(26.h),
      );
  static BoxDecoration get fillGreenATL26 => BoxDecoration(
        color: appTheme.greenA10001,
        borderRadius: BorderRadius.circular(26.h),
      );
  static BoxDecoration get fillBlueGrayTL8 => BoxDecoration(
        color: appTheme.blueGray50,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillBlueGrayTL81 => BoxDecoration(
        color: appTheme.blueGray80002,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillOnSecondaryContainerTL16 => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get none => BoxDecoration();
}

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {Key? key,
      this.alignment,
      this.height,
      this.width,
      this.decoration,
      this.padding,
      this.onTap,
      this.child})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final BoxDecoration? decoration;

  final EdgeInsetsGeometry? padding;

  final VoidCallback? onTap;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center, child: iconButtonWidget)
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: DecoratedBox(
          decoration: decoration ??
              BoxDecoration(
                borderRadius: BorderRadius.circular(12.h),
                border: Border.all(
                  color: appTheme.gray200,
                  width: 1.h,
                ),
              ),
          child: IconButton(
            padding: padding ?? EdgeInsets.zero,
            onPressed: onTap,
            icon: child ?? Container(),
          ),
        ),
      );
}
