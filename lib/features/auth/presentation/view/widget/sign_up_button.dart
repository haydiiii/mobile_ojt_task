import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_ojt_task/core/widget/custom_button.dart';
import 'package:mobile_ojt_task/features/auth/presentation/cubit/auth_cubit.dart';

class SignUpButton extends StatelessWidget {
   final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;

   const SignUpButton({super.key, required this.formKey, required this.emailController, required this.passwordController, required this.nameController,});

  @override
  Widget build(BuildContext context) {
    return CustomElvButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
context.read<AuthCubit>().signUp(
  email: emailController.text,
  password: passwordController.text,
  name: nameController.text,
 
);
        }
      },
      text: 'Sign Up',
      width: 490,
      height: 50,
    );
  }
}
