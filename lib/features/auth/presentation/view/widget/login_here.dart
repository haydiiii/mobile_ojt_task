import 'package:flutter/material.dart';
import 'package:mobile_ojt_task/core/theme/colors.dart';
import 'package:mobile_ojt_task/core/theme/style.dart';
import 'package:mobile_ojt_task/core/widget/custom_text_button.dart';

class Loginhere extends StatelessWidget {
  final Function()? onPressed;
  const Loginhere({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text('Already have an account?',
          style: smallText(color: AppColors.blackColor)),
      CustomTextButton(
        text: 'Login here',
        onPressed: onPressed,
      )
    ]);
  }
}
