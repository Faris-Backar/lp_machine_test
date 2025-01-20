import 'package:flutter/material.dart';
import 'package:lp_machine_test/app/core/app_strings.dart';
import 'package:lp_machine_test/app/core/extensions/extensions.dart';
import 'package:lp_machine_test/app/core/theme/color_resources.dart';
import 'package:lp_machine_test/app/core/utils/app_utils.dart';
import 'package:lp_machine_test/app/features/auth/presentation/login_screen.dart';
import 'package:lp_machine_test/app/features/widgets/custom_text_field.dart';
import 'package:lp_machine_test/app/features/widgets/primary_button.dart';
import 'package:lp_machine_test/app/features/widgets/svg_icon.dart';
import 'package:lp_machine_test/gen/assets.gen.dart';
import 'package:sizer/sizer.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _fullnameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _emailController = TextEditingController();
  final _addressController = TextEditingController();
  final _countryController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: SizedBox.shrink(),
        centerTitle: true,
        title: Text(
          AppStrings.register,
          style: context.textTheme.bodyLarge?.copyWith(
              color: ColorResources.primaryColor,
              fontSize: 28,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    CustomTextField(
                      label: AppStrings.fullname,
                      isRequired: true,
                      controller: _fullnameController,
                      hint: AppStrings.fullname,
                      validator: AppUtils.fullNameValidator,
                      textInputAction: TextInputAction.next,
                      suffixIcon:
                          _buildSuffixIcon(iconPath: Assets.icons.personAvatar),
                    ),
                    SizedBox(height: 22),
                    CustomTextField(
                      label: AppStrings.lastName,
                      isRequired: true,
                      controller: _lastNameController,
                      hint: AppStrings.lastName,
                      validator: AppUtils.nameValidator,
                      textInputAction: TextInputAction.next,
                      suffixIcon:
                          _buildSuffixIcon(iconPath: Assets.icons.personAvatar),
                    ),
                    SizedBox(height: 22),
                    CustomTextField(
                      label: AppStrings.phoneNumber,
                      isRequired: true,
                      controller: _phoneNumberController,
                      hint: AppStrings.phoneNumber,
                      validator: AppUtils.mobileNumberValidator,
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.phone,
                      suffixIcon:
                          _buildSuffixIcon(iconPath: Assets.icons.smartphone),
                    ),
                    SizedBox(height: 22),
                    CustomTextField(
                      label: AppStrings.email,
                      controller: _emailController,
                      isRequired: true,
                      hint: AppStrings.emailHint,
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.emailAddress,
                      validator: AppUtils.emailValidator,
                      suffixIcon:
                          _buildSuffixIcon(iconPath: Assets.icons.personAvatar),
                    ),
                    SizedBox(height: 22),
                    CustomTextField(
                      label: AppStrings.address,
                      controller: _addressController,
                      hint: AppStrings.address,
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.emailAddress,
                      suffixIcon:
                          _buildSuffixIcon(iconPath: Assets.icons.personAvatar),
                    ),
                    SizedBox(height: 22),
                    CustomTextField(
                      label: AppStrings.country,
                      controller: _countryController,
                      hint: AppStrings.country,
                      textInputAction: TextInputAction.go,
                      suffixIcon:
                          _buildSuffixIcon(iconPath: Assets.icons.personAvatar),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 48,
                width: 100.w,
                child: PrimaryButton(
                  label: AppStrings.register,
                  ontap: _onRegister,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.alreadyHaveAnAccount,
                    style: TextStyle(
                      color: ColorResources.secondaryGrey,
                      fontSize: 16.sp,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                    },
                    child: Text(
                      AppStrings.login,
                      style: context.textTheme.labelMedium?.copyWith(
                        fontSize: 16.0.sp,
                        color: ColorResources.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }

  Widget _buildSuffixIcon({required String iconPath}) {
    return SizedBox(
      height: 20,
      width: 20,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SvgIcon(iconPath: Assets.icons.personAvatar),
      ),
    );
  }

  _onRegister() {
    if (_formKey.currentState?.validate() == true) {}
  }
}
