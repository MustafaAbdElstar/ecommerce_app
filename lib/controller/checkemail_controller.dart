import 'package:ecommerce/core/constant/routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail();
  goToSuccessSignUp();
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController myemail;

  @override
  checkEmail() {}

  @override
  goToSuccessSignUp() {
    Get.toNamed(AppRout.successSignupRoute);
  }

  @override
  void onInit() {
    myemail = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    myemail.dispose();

    super.dispose();
  }
}
