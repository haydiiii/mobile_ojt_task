import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mobile_ojt_task/core/theme/style.dart';

import '../../../../../core/theme/colors.dart';

class TextTitleLogin extends StatelessWidget {
  const TextTitleLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // First Text widget with your title
        Text(
          "Let's Sing you in.",
          style: titleText(
            color: AppColors.textColor,
            fontsize: 30,
          ),
        ),
        Gap(10),
        Text(
          "Welcome back.\nYou've been missed!",
          style: titleText(
            color: AppColors.textColor,
            fontWeight: FontWeight.normal,
            fontsize: 30,
          ),
        ),
      ],
    );
  }
}
