
import 'package:flutter/material.dart';
import 'package:mobile_ojt_task/core/theme/colors.dart';
import 'package:mobile_ojt_task/core/theme/style.dart';
import 'package:mobile_ojt_task/core/widget/custom_text_button.dart';

class RegisterNow extends StatelessWidget {
  final Function() onPressed;
   const RegisterNow({super.key, required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text('Don\'t have an account?',
          style: smallText(color: AppColors.blackColor)),
      CustomTextButton(
        text: 'RegisterNow',
        onPressed: onPressed,
      )
    ]);
  }
}

