import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mobile_ojt_task/core/functions/app_routing.dart';
import 'package:mobile_ojt_task/core/theme/colors.dart';
import 'package:mobile_ojt_task/core/theme/style.dart';
import 'package:mobile_ojt_task/features/auth/presentation/view/signup_view.dart';
import 'package:mobile_ojt_task/features/auth/presentation/view/widget/email_text_ffield.dart';
import 'package:mobile_ojt_task/features/auth/presentation/view/widget/login_button.dart';
import 'package:mobile_ojt_task/features/auth/presentation/view/widget/password_txt_ffield.dart';
import 'package:mobile_ojt_task/features/auth/presentation/view/widget/register_now.dart';
import 'package:mobile_ojt_task/features/auth/presentation/view/widget/text_title_login.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

bool isVisible = false;
TextEditingController passwordController = TextEditingController();
TextEditingController emailController = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    exit(0);
                  },
                  icon: Icon(Icons.arrow_back, color: AppColors.textColor),
                ),
                const TextTitleLogin(),
                const Gap(20),
                Text("Email",
                    style: bodyText(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.normal)),
                Gap(5),
                EmailTextFfield(
                  emailController: emailController,
                ),
                const Gap(15),
                Text("Password",
                    style: bodyText(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.normal)),
                const Gap(5),
                PasswordTextFfield(
                  passwordController: passwordController,
                  isVisible: isVisible,
                  toggleVisibility: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                ),
                const Gap(200),
                LoginButton(
                  emailController: emailController,
                  formKey: formKey,
                  passwordController: passwordController,
                ),
                const Gap(10),
                RegisterNow(
                  onPressed: () {
                    pushWithReplacement(context, const SignUpView());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
