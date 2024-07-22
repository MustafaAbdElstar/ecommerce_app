import 'package:ecommerce/core/constant/routs.dart';
import 'package:ecommerce/core/localization/loaclservices.dart';
import 'package:ecommerce/view/widget/Language/customButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LanguegeScreen extends GetView<LocalController> {
  const LanguegeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "1".tr,
                style: TextStyle(
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp),
              ),
              CustomeButtonLanguage(
                title_Button: '2'.tr,
                onPressed: () {
                  controller.changeLang("ar");
                },
              ),
              CustomeButtonLanguage(
                title_Button: '3'.tr,
                onPressed: () {
                  controller.changeLang("en");
                },
              ),
              CustomeButtonLanguage(
                title_Button: '4'.tr,
                onPressed: () {
                  Get.offAllNamed(AppRout.onBoardingRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
