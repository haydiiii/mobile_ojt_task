// git
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_ojt_task/core/widget/custom_button.dart';
import 'package:mobile_ojt_task/features/auth/presentation/cubit/auth_cubit.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  const LoginButton({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElvButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          context.read<AuthCubit>().login(
                email: emailController.text,
                password: passwordController.text,
              );
        }
      },
      text: 'Sign in',
      
      width: 490,
      height: 50,
    );
  }
}
