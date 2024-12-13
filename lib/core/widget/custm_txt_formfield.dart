import 'package:flutter/material.dart';
import 'package:mobile_ojt_task/core/theme/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Function()? onTap;
  final Function(String)? onChanged;
  final Function()? onPressed;
  final IconData? suffixIcon;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final bool? enabled;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.onTap,
    this.suffixIcon,
    required this.obscureText,
    this.keyboardType,
    this.onChanged,
    this.onPressed,
    this.enabled,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      enabled: enabled,
      onTap: onTap,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
          enabled: true,
          labelStyle: const TextStyle(color: AppColors.textColor),
          hintText: hintText,
          suffixIcon: suffixIcon != null
              ? IconButton(onPressed: onPressed, icon: Icon(suffixIcon))
              : null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AppColors.primaryColor),
          )),
    );
  }
}
