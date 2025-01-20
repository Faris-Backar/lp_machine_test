import 'package:flutter/material.dart';
import 'package:lp_machine_test/app/core/app_strings.dart';
import 'package:lp_machine_test/app/core/theme/color_resources.dart';
import 'package:lp_machine_test/app/features/auth/presentation/login_screen.dart';
import 'package:lp_machine_test/app/features/intro/data/intro_data.dart';
import 'package:lp_machine_test/app/features/widgets/primary_button.dart';
import 'package:sizer/sizer.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  final _currentPageValueNotifier = ValueNotifier<int>(0);
  final _pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildSkipButton(context),
              SizedBox(height: 10.h),
              Expanded(child: _buildPageView()),
              const SizedBox(height: 30),
              _buildPageIndicators(),
              const SizedBox(height: 20),
              _buildNextOrGetStartedButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkipButton(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: PrimaryButton(
        label: AppStrings.skip,
        ontap: () => _navigateToLogin(context),
      ),
    );
  }

  /// PageView Builder
  Widget _buildPageView() {
    return PageView.builder(
      controller: _pageViewController,
      itemCount: IntroScreenData.introList.length,
      onPageChanged: (value) => _currentPageValueNotifier.value = value,
      itemBuilder: (context, index) {
        final introData = IntroScreenData.introList[index];
        return Column(
          children: [
            _buildIntroImage(introData.image),
            const SizedBox(height: 20),
            _buildIntroContent(introData.title, introData.content),
          ],
        );
      },
    );
  }

  Widget _buildIntroImage(String image) {
    return SizedBox(
      height: 30.h,
      width: 100.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }

  Widget _buildIntroContent(String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              color: ColorResources.primaryColor,
              fontSize: 21.sp,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            content,
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildPageIndicators() {
    return ValueListenableBuilder<int>(
      valueListenable: _currentPageValueNotifier,
      builder: (context, value, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            IntroScreenData.introList.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              margin: const EdgeInsets.only(right: 5),
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                color: value == index
                    ? ColorResources.primaryColor
                    : const Color(0xFFD8D8D8),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildNextOrGetStartedButton(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: _currentPageValueNotifier,
      builder: (context, value, child) {
        final isLastPage = value == IntroScreenData.introList.length - 1;
        return SizedBox(
          height: 50,
          width: double.infinity,
          child: PrimaryButton(
            label: isLastPage ? AppStrings.getStarted : AppStrings.next,
            ontap: () {
              if (isLastPage) {
                _navigateToLogin(context);
              } else {
                _pageViewController.animateToPage(
                  value + 1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            },
          ),
        );
      },
    );
  }

  /// Navigation to Login Screen
  void _navigateToLogin(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }
}
