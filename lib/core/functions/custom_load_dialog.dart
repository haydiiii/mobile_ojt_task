import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_ojt_task/core/theme/colors.dart';

showLoadingDialog(BuildContext context) {
  showDialog(
    barrierColor: AppColors.shadowColor,
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Center(
       child: Lottie.asset('assets/loading.json'),
      );
    },
  );
}
