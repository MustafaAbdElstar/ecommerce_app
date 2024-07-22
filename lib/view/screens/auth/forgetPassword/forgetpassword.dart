import 'package:ecommerce/controller/ForgetPasswordController.dart';
import 'package:ecommerce/view/widget/auth/customMaterialButton.dart';
import 'package:ecommerce/view/widget/auth/customeSizedBox.dart';

import 'package:ecommerce/view/widget/auth/cutomeAppBarText.dart';
import 'package:ecommerce/view/widget/auth/forgetpassword/customeTextFrogetPassword.dart';
import 'package:ecommerce/view/widget/auth/login/customeTitleText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});

  GlobalKey<FormState> frmkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.find();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: customeAppBarText(
          AppBarText: '39'.tr,
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
                title: "40".tr,
                fontSize: size.width * 0.07,
              ),
              customeSize(height: size.width * 0.08),
              customeSize(height: size.width * 0.048),
              CustometextformfiledForgetPassword(
                size: size,
                emailController: controller.myemail,
              ),
              customeSize(height: size.width * 0.2),
              Center(
                child: CustomeMaterialButton(
                  size: size,
                  textTitle: '43'.tr,
                  btnColor: Colors.red.shade700,
                  onPressed: () {
                    print("=======================");
                    controller.goToPageVirfy();
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
