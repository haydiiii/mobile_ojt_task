import 'package:flutter/material.dart';
import 'package:mobile_ojt_task/core/theme/colors.dart';
import 'package:mobile_ojt_task/core/theme/style.dart';

showsuccessDialog({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message, style: bodyText(color:  AppColors.white,)), backgroundColor: AppColors.primaryColor),
  );
}
