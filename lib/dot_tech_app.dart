import 'package:flutter/material.dart';
import 'package:lp_machine_test/app/core/theme/app_theme.dart';
import 'package:lp_machine_test/app/features/splash/presentation/splash_screen.dart';
import 'package:sizer/sizer.dart';

class DotTechApp extends StatelessWidget {
  const DotTechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: SplashScreen(),
      );
    });
  }
}
