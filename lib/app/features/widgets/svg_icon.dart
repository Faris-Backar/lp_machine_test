import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lp_machine_test/app/core/theme/color_resources.dart';

class SvgIcon extends StatelessWidget {
  final String iconPath;
  final Color? color;
  const SvgIcon({super.key, required this.iconPath, this.color});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconPath,
      colorFilter: ColorFilter.mode(
        color ?? ColorResources.textColor,
        BlendMode.srcIn, // Apply the blend mode
      ),
    );
  }
}
