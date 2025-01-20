import 'package:flutter/material.dart';
import 'package:lp_machine_test/app/core/theme/color_resources.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? ontap;
  final Color? backgroundColor;
  final String label;
  const PrimaryButton(
      {super.key, this.ontap, this.backgroundColor, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorResources.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }
}
