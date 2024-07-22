import 'package:ecommerce/controller/ForgetPasswordController.dart';
import 'package:ecommerce/controller/resetPasswordController.dart';
import 'package:ecommerce/view/widget/auth/customMaterialButton.dart';
import 'package:ecommerce/view/widget/auth/customeSizedBox.dart';

import 'package:ecommerce/view/widget/auth/cutomeAppBarText.dart';
import 'package:ecommerce/view/widget/auth/forgetpassword/customeTextFrogetPassword.dart';
import 'package:ecommerce/view/widget/auth/forgetpassword/customeTextResetPassword.dart';
import 'package:ecommerce/view/widget/auth/login/customeTitleText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});

  GlobalKey<FormState> frmkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: customeAppBarText(
          AppBarText: '46'.tr,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),
        padding: EdgeInsets.all(
          size.width * 0.03,
        ),
        child: Form(
          key: frmkey,
          child: ListView(
            children: [
              customeTitletext(
                fontColor: Colors.black,
                size: size,
                title: "51".tr,
                fontSize: size.width * 0.07,
              ),
              customeSize(height: size.width * 0.08),
              CustometextformfiledResetPassword(
                size: size,
                passwordController: controller.password,
                repasswordController: controller.rePassword,
              ),
              customeSize(height: size.width * 0.2),
              Center(
                child: CustomeMaterialButton(
                  size: size,
                  textTitle: '50'.tr,
                  btnColor: Colors.red.shade700,
                  onPressed: () {
                    controller.goToSignIn();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
