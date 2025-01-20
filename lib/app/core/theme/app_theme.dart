import 'package:flutter/material.dart';
import 'package:lp_machine_test/app/core/theme/color_resources.dart';
import 'package:lp_machine_test/gen/fonts.gen.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: ColorResources.primaryColor,
      fontFamily: FontFamily.airbnbCereal,
      scaffoldBackgroundColor: Colors.white,
    );
  }
}
