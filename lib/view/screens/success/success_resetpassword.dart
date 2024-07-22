import 'package:ecommerce/core/constant/routs.dart';
import 'package:ecommerce/view/widget/auth/login/customeTitleText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SuccessResetPasswrd extends StatelessWidget {
  const SuccessResetPasswrd({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: customeTitletext(
            size: size,
            title: "61".tr,
            fontSize: 19.sp,
            fontColor: Colors.indigo),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(
            5.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "62",
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Icon(
                  Icons.check_circle_outline_rounded,
                  size: 35.h,
                  color: Colors.green,
                ),
              ),
              Center(
                child: Text(
                  "63",
                  style: TextStyle(
                      fontSize: 22.sp,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: MaterialButton(
                    onPressed: () {
                      Get.offAllNamed(AppRout.loginRoute);
                    },
                    color: Colors.indigo,
                    textColor: Colors.white,
                    child: Text(
                      "64",
                      style: TextStyle(
                          fontSize: 17.sp, fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
