import 'package:lp_machine_test/app/core/app_strings.dart';

class AppUtils {
  static String? passWordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Password cannot be empty";
    } else if (value.length < 8) {
      return "Password must be at least 8 characters long";
    } else if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return "Password must contain at least 1 capital letter";
    }
    return null;
  }

  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.emailCannotBeEmpty;
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return AppStrings.enterValidEmail;
    }
    return null;
  }

  static String? fullNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Full name is required';
    } else if (!RegExp(r"^[a-zA-Z\s]+$").hasMatch(value)) {
      return 'Full name can only contain letters and spaces';
    } else if (value.trim().split(' ').length < 2) {
      return 'Please enter your full name';
    } else if (value.length < 3) {
      return 'Full name must be at least 3 characters long';
    }
    return null;
  }

  static String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Lats name is required';
    } else if (value.trim().split(' ').length < 2) {
      return 'Please enter your Last name';
    } else if (value.length < 3) {
      return 'Full name must be at least 3 characters long';
    }
    return null;
  }

  static String? mobileNumberValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Mobile number is required';
    } else if (!RegExp(r"^[0-9]{10}$").hasMatch(value)) {
      return 'Enter a valid 10-digit mobile number';
    }
    return null;
  }
}
