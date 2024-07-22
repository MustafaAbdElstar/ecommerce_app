import 'package:ecommerce/core/constant/routs.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  changePassword();
  goToSignIn();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController rePassword;

  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }

  @override
  changePassword() {}

  @override
  goToSignIn() {
    Get.offNamed(AppRout.successResetpasswordRoute);
  }
}
