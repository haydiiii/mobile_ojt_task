import 'package:flutter/material.dart';
import 'package:mobile_ojt_task/core/theme/colors.dart';
import 'package:mobile_ojt_task/core/theme/style.dart';

class CustomElvButton extends StatelessWidget {
  const CustomElvButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.width,
    this.height,
    this.child,
    this.shape,
  });
  final Function() onPressed;
  final String text;
  final double width;
  final double? height;
  final Widget? child;
  final ShapeBorder? shape;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: onPressed,
        child: Text(
          text,
          style: bodyText(color: AppColors.white),
        ),
      ),
    );
  }
}
