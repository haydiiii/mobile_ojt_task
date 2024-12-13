import 'package:flutter/material.dart';
import 'package:mobile_ojt_task/core/widget/custm_txt_formfield.dart';

class PasswordTextFfield extends StatelessWidget {
  final bool isVisible;
  final VoidCallback toggleVisibility;
  final TextEditingController passwordController;

  const PasswordTextFfield(
      {super.key, required this.isVisible, required this.toggleVisibility, required this.passwordController});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: '**********',
      suffixIcon:
          isVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
      keyboardType: TextInputType.number,
      obscureText: !isVisible,
      validator: (value) => (value!.isEmpty) ? 'Please Enter Password' : null,
      onPressed: toggleVisibility,
    );
  }
}
