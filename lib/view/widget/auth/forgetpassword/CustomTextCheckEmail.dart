import 'package:ecommerce/view/widget/auth/customeTextFormFiled.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustometextformfiledCheckEmail extends StatelessWidget {
  const CustometextformfiledCheckEmail({
    super.key,
    required this.size,
    required this.emailController,
  });

  final Size size;

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomeTextFormFiled(
          keyboardType: TextInputType.emailAddress,
          Mycontroller: emailController,
          size: size,
          LabelText: "54".tr,
          hintText: "55".tr,
          icon: Icons.email_outlined,
        ),
      ],
    );
  }
}
