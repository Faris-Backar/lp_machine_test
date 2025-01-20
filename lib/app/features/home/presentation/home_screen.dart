import 'package:flutter/material.dart';
import 'package:lp_machine_test/app/core/app_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppStrings.home),
      ),
    );
  }
}
