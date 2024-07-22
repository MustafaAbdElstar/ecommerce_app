import 'package:ecommerce/view/widget/auth/customeSizedBox.dart';
import 'package:ecommerce/view/widget/auth/customeTextFormFiled.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustometextformfiledResetPassword extends StatelessWidget {
  const CustometextformfiledResetPassword({
    super.key,
    required this.size,
    required this.passwordController,
    required this.repasswordController,
  });

  final Size size;

  final TextEditingController passwordController;
  final TextEditingController repasswordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomeTextFormFiled(
          keyboardType: TextInputType.name,
          Mycontroller: passwordController,
          size: size,
          LabelText: "47".tr,
          hintText: "48".tr,
          icon: Icons.lock_outline,
          obscureText: true,
        ),
        customeSize(height: size.width * 0.08),
        CustomeTextFormFiled(
          keyboardType: TextInputType.name,
          Mycontroller: repasswordController,
          size: size,
          LabelText: "47".tr,
          hintText: "49".tr,
          icon: Icons.lock_outline,
          obscureText: true,
        )
      ],
    );
  }
}
