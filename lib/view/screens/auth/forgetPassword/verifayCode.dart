import 'package:ecommerce/controller/verification_controller.dart';

import 'package:ecommerce/view/widget/auth/customeSizedBox.dart';

import 'package:ecommerce/view/widget/auth/cutomeAppBarText.dart';

import 'package:ecommerce/view/widget/auth/login/customeTitleText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VerificationScreen extends StatelessWidget {
  VerificationScreen({super.key});

  GlobalKey<FormState> frmkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    VerifiacationControllerImp controller = Get.find();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: customeAppBarText(
          AppBarText: '44'.tr,
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
              Center(
                child: customeTitletext(
                  fontColor: Colors.black,
                  size: size,
                  title: "45".tr,
                  fontSize: 18.sp,
                ),
              ),
              customeSize(height: size.width * 0.08),
              Center(
                child: OtpTextField(
                  borderRadius: BorderRadius.circular(30),
                  borderWidth: 2, disabledBorderColor: Colors.indigo,
                  enabledBorderColor: Colors.cyan,
                  numberOfFields: 5,
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  showFieldAsBox: true,

                  onCodeChanged: (String code) {},

                  onSubmit: (String verificationCode) {
                    controller.goToResetPassword();
                  }, // end onSubmit
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
