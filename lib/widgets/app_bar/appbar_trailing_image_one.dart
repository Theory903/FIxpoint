import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';

class AppbarTrailingImageOne extends StatelessWidget {
  AppbarTrailingImageOne(
      {Key? key,
      this.imagePath,
      this.height,
      this.width,
      this.onTap,
      this.margin})
      : super(
          key: key,
        );

  final double? height;

  final double? width;

  final String? imagePath;

  final Function? onTap;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        borderRadius: BorderRadius.circular(
          16.h,
        ),
        onTap: () {
          onTap?.call();
        },
        child: CustomImageView(
          imagePath: imagePath!,
          height: height ?? 26.h,
          width: width ?? 24.h,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            16.h,
          ),
        ),
      ),
    );
  }
}
