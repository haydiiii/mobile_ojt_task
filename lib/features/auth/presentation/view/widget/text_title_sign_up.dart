
import 'package:flutter/material.dart';
import 'package:mobile_ojt_task/core/theme/colors.dart';
import 'package:mobile_ojt_task/core/theme/style.dart';

class TextTitleSignUp extends StatelessWidget {
  const TextTitleSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      'Register to New Account',
      style: titleText(
          color: AppColors.blackColor,
          fontWeight: FontWeight.w700,
          fontsize: 30,
          ),
    );
  }
}
