import 'package:flutter/material.dart';
import 'package:lp_machine_test/app/core/extensions/extensions.dart';
import 'package:lp_machine_test/app/core/theme/color_resources.dart';
import 'package:lp_machine_test/app/features/widgets/text_form_field_widget.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final bool? passwordvisibility;
  final String? hint;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final TextInputType? textInputType;
  final bool? isRequired;
  const CustomTextField(
      {super.key,
      required this.label,
      required this.controller,
      this.suffixIcon,
      this.passwordvisibility,
      this.hint,
      this.textInputAction,
      this.fillColor,
      this.textInputType,
      this.isRequired,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              label,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: ColorResources.textColor),
            ),
            if (isRequired == true)
              Text(
                "*",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: ColorResources.error),
              ),
          ],
        ),
        const SizedBox(height: 8),
        TextInputFormField(
          controller: controller,
          suffixIcon: suffixIcon,
          isPasswordVisible: passwordvisibility,
          textInputType: textInputType,
          hintDecoration:
              context.textTheme.labelMedium?.copyWith(color: Colors.grey),
          hint: hint,
          textInputAction: textInputAction,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          maxLines: 1,
          fillColor: fillColor ?? Colors.white,
        ),
      ],
    );
  }
}
