import 'package:flutter/material.dart';
import 'package:lp_machine_test/app/core/app_strings.dart';
import 'package:lp_machine_test/app/core/extensions/extensions.dart';
import 'package:lp_machine_test/app/core/theme/color_resources.dart';
import 'package:lp_machine_test/app/core/utils/app_utils.dart';
import 'package:lp_machine_test/app/features/auth/presentation/register_screen.dart';
import 'package:lp_machine_test/app/features/widgets/custom_text_field.dart';
import 'package:lp_machine_test/app/features/widgets/primary_button.dart';
import 'package:lp_machine_test/app/features/widgets/svg_icon.dart';
import 'package:lp_machine_test/gen/assets.gen.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordVisibilityNotifier = ValueNotifier<bool>(true);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 6.h),
                _buildLogo(),
                SizedBox(height: 8.h),
                _buildTitle(context),
                const SizedBox(height: 25),
                _buildLoginForm(),
                const SizedBox(height: 26),
                _buildForgotPassword(context),
                const SizedBox(height: 45),
                _buildSignInButton(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildLogo() {
    return Center(
      child: SizedBox(
        height: 11.85.h,
        width: 30.61.w,
        child: Image.asset(Assets.images.doTech1.path),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      AppStrings.letYousignIn,
      style: context.textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 28,
      ),
    );
  }

  Widget _buildLoginForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextField(
            label: AppStrings.email,
            controller: _emailController,
            hint: AppStrings.emailHint,
            validator: AppUtils.emailValidator,
            suffixIcon: _buildEmailIcon(),
          ),
          const SizedBox(height: 25),
          ValueListenableBuilder<bool>(
            valueListenable: _passwordVisibilityNotifier,
            builder: (context, isVisible, child) {
              return CustomTextField(
                controller: _passwordController,
                label: AppStrings.password,
                passwordvisibility: isVisible,
                hint: AppStrings.passwordHint,
                textInputAction: TextInputAction.done,
                fillColor: ColorResources.grey,
                validator: AppUtils.passWordValidator,
                suffixIcon: _buildPasswordVisibilityToggle(isVisible),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildEmailIcon() {
    return SizedBox(
      height: 20,
      width: 20,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SvgIcon(iconPath: Assets.icons.personAvatar),
      ),
    );
  }

  Widget _buildPasswordVisibilityToggle(bool isVisible) {
    return IconButton(
      onPressed: () {
        _passwordVisibilityNotifier.value = !isVisible;
      },
      icon: Icon(
        isVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
      ),
    );
  }

  Widget _buildForgotPassword(BuildContext context) {
    return Text(
      AppStrings.forgotPassword,
      style: context.textTheme.bodyMedium?.copyWith(
        color: ColorResources.primaryColor,
        fontSize: 15,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _buildSignInButton() {
    return SizedBox(
      height: 48,
      width: 100.w,
      child: PrimaryButton(
        label: AppStrings.signIn,
        ontap: _onSignIn,
      ),
    );
  }

  void _onSignIn() {
    if (_formKey.currentState?.validate() == true) {}
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppStrings.dontHaveAnAccount,
            style: TextStyle(
              color: ColorResources.secondaryGrey,
              fontSize: 16.sp,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => RegisterScreen(),
              ));
            },
            child: Text(
              AppStrings.register,
              style: context.textTheme.labelMedium?.copyWith(
                fontSize: 16.0.sp,
                color: ColorResources.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
