import 'package:flutter/material.dart';
import 'package:mobile_ojt_task/core/theme/colors.dart';
import 'package:mobile_ojt_task/core/theme/style.dart';

class CustomTextButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;

  const CustomTextButton({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Text(
        text,
        style: smallText(color: AppColors.primaryColor),
      ),
    );
  }
}
