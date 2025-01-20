import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lp_machine_test/app/features/intro/presentation/intro_screen.dart';
import 'package:lp_machine_test/gen/assets.gen.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() {
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => IntroScreen(),
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    log("1 h => ${1.h}, width ${1.w}, sp => ${1.sp} ");
    return Scaffold(
      body: Center(
        child: SizedBox(
            height: 20.42.h,
            width: 54.4.w,
            child: Image.asset(Assets.images.doTech1.path)),
      ),
    );
  }
}
