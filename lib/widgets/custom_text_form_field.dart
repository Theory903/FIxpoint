import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';

extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get outlineGray => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.h),
        borderSide: BorderSide(
          color: appTheme.gray40001,
          width: 1,
        ),
      );

  static OutlineInputBorder get fillGray => OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.h),
        borderSide: BorderSide.none,
      );
}

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.boxDecoration,
    this.scrollPaddingController,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.textStyle,
    this.obscureText = false,
    this.readOnly = false,
    this.onTap,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = false,
    this.validator,
    required this.labelText,
    required this.keyboardType,
    required this.suffixIcon,
  }) : super(key: key);

  final Alignment? alignment;
  final double? width;
  final BoxDecoration? boxDecoration;
  final TextEditingController? scrollPaddingController;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autofocus;
  final TextStyle? textStyle;
  final bool obscureText;
  final bool readOnly;
  final VoidCallback? onTap;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final int? maxLines;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool filled;
  final FormFieldValidator<String>? validator;
  final String labelText;
  final TextInputType keyboardType;
  final IconButton suffixIcon;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _textFormFieldWidget(context))
        : _textFormFieldWidget(context);
  }

  Widget _textFormFieldWidget(BuildContext context) => Container(
        width: width ?? double.infinity,
        decoration: boxDecoration,
        child: TextFormField(
          scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          controller: controller,
          focusNode: focusNode,
          onTapOutside: (_) {
            focusNode?.unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          autofocus: autofocus,
          style: textStyle ?? CustomTextStyles.titleMediumPoppinsPrimary,
          obscureText: obscureText,
          readOnly: readOnly,
          onTap: onTap,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: _inputDecoration,
          validator: validator,
        ),
      );

  InputDecoration get _inputDecoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.bodySmallRalewayIndigo200,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix ?? suffixIcon,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.fromLTRB(6.h, 12.h, 6.h, 6.h),
        fillColor: fillColor,
        filled: filled,
        border: borderDecoration ??
            UnderlineInputBorder(
              borderSide: BorderSide(
                color: appTheme.gray30003,
              ),
            ),
        enabledBorder: borderDecoration ??
            UnderlineInputBorder(
              borderSide: BorderSide(
                color: appTheme.gray30003,
              ),
            ),
        focusedBorder: (borderDecoration ?? UnderlineInputBorder()).copyWith(
          borderSide: BorderSide(
            color: theme.colorScheme.primary,
            width: 1,
          ),
        ),
      );
}
