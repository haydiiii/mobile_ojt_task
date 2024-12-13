import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData? icon;
  final Function()? onPressed;
  final Color? color;

  const CustomIconButton({super.key, this.icon, this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon:Icon(icon , color: color,)  ,
      onPressed: onPressed
    );
  }
}