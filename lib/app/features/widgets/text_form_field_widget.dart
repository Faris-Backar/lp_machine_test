import 'package:flutter/material.dart';
import 'package:lp_machine_test/app/core/extensions/extensions.dart';
import 'package:lp_machine_test/app/core/theme/color_resources.dart';

class TextInputFormField extends StatelessWidget {
  const TextInputFormField({
    super.key,
    this.hint,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.isPasswordVisible,
    this.textInputAction,
    this.textInputType,
    this.onChanged,
    this.fillColor,
    this.borderRadius,
    this.validator,
    this.contentPadding,
    this.hintDecoration,
    this.style,
    this.cursorColor,
    this.maxLines,
    this.autovalidateMode,
  });
  final String? hint;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? isPasswordVisible;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final Function(String)? onChanged;
  final Color? fillColor;
  final double? borderRadius;
  final String? Function(String?)? validator;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? hintDecoration;
  final TextStyle? style;
  final Color? cursorColor;
  final int? maxLines;
  final AutovalidateMode? autovalidateMode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPasswordVisible ?? false,
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      obscuringCharacter: '*',
      onChanged: onChanged,
      validator: validator,
      autovalidateMode: autovalidateMode,
      decoration: InputDecoration(
          contentPadding:
              contentPadding ?? const EdgeInsets.symmetric(horizontal: 16.0),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          fillColor: fillColor,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 20),
              borderSide: const BorderSide(color: ColorResources.primaryColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 20),
              borderSide: const BorderSide(color: ColorResources.primaryColor)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 20),
              borderSide: const BorderSide(color: ColorResources.primaryColor)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 20),
              borderSide:
                  const BorderSide(color: ColorResources.secondaryGrey)),
          hintText: hint,
          hintStyle: hintDecoration,
          errorStyle: context.textTheme.labelSmall?.copyWith(
              color: ColorResources.error, fontWeight: FontWeight.w400)),
      maxLines: maxLines,
      style: style,
      cursorColor: cursorColor,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}
