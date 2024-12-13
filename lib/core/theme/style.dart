import 'package:flutter/material.dart';
import 'package:mobile_ojt_task/core/theme/colors.dart';



TextStyle titleText( {
  Color? color,
  double? fontsize,
  FontWeight? fontWeight,
}) {
  return TextStyle(
    fontSize: fontsize ?? 24,
    fontWeight: fontWeight ?? FontWeight.bold,
    color: color ?? AppColors.primaryColor,
  );
}

TextStyle bodyText({
  Color? color,
  double? fontsize,
  FontWeight? fontWeight,
}) {
  return TextStyle(
    fontSize: fontsize ?? 16,
    fontWeight: fontWeight ?? FontWeight.w600,
    color: color ?? AppColors.blackColor,
  );
}

TextStyle hashText({
  Color? color,
  double? fontsize,
  FontWeight? fontWeight,
}) {
  return TextStyle(
    fontSize: fontsize ?? 12,
    fontWeight: fontWeight ?? FontWeight.w500,
    color: color ?? Colors.grey,
  );
}

TextStyle smallText({
  Color? color,
  double? fontsize,
  FontWeight? fontWeight,
}) {
  return TextStyle(
    fontSize: fontsize ?? 14,
    fontWeight: fontWeight ?? FontWeight.normal,
    color: color ?? Colors.blueGrey,
  );
}
