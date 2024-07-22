import 'package:ecommerce/controller/checkemail_controller.dart';
import 'package:ecommerce/view/widget/auth/customMaterialButton.dart';
import 'package:ecommerce/view/widget/auth/customeSizedBox.dart';

import 'package:ecommerce/view/widget/auth/cutomeAppBarText.dart';
import 'package:ecommerce/view/widget/auth/forgetpassword/CustomTextCheckEmail.dart';

import 'package:ecommerce/view/widget/auth/login/customeTitleText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CheckEmailScreen extends StatelessWidget {
  CheckEmailScreen({super.key});

  GlobalKey<FormState> frmkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: customeAppBarText(
          AppBarText: '52'.tr,
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
                title: "53".tr,
                fontSize: 20.sp,
              ),
              customeSize(height: size.width * 0.08),
              CustometextformfiledCheckEmail(
                size: size,
                emailController: controller.myemail,
              ),
              customeSize(height: size.width * 0.2),
              Center(
                child: CustomeMaterialButton(
                  size: size,
                  textTitle: '56'.tr,
                  btnColor: Colors.red.shade700,
                  onPressed: () {
                    print("=======================");
                    controller.goToSuccessSignUp();
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
