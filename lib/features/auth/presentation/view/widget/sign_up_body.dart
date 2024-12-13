import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mobile_ojt_task/core/functions/app_routing.dart';
import 'package:mobile_ojt_task/core/theme/colors.dart';
import 'package:mobile_ojt_task/core/theme/style.dart';
import 'package:mobile_ojt_task/features/auth/presentation/view/login_view.dart';
import 'package:mobile_ojt_task/features/auth/presentation/view/widget/email_text_ffield.dart';
import 'package:mobile_ojt_task/features/auth/presentation/view/widget/login_here.dart';
import 'package:mobile_ojt_task/features/auth/presentation/view/widget/name_text_ffield.dart';
import 'package:mobile_ojt_task/features/auth/presentation/view/widget/password_txt_ffield.dart';
import 'package:mobile_ojt_task/features/auth/presentation/view/widget/sign_up_button.dart';
import 'package:mobile_ojt_task/features/auth/presentation/view/widget/text_title_sign_up.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

bool isVisible = false;
TextEditingController passwordController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController phoneController = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _SignUpBodyState extends State<SignUpBody> {
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
                const TextTitleSignUp(),
                const Gap(20),
                Text("Name",
                    style: bodyText(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.normal)),
                Gap(5),
                NameTextFfield(
                  nameController: nameController,
                ),
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
                Gap(5),
                PasswordTextFfield(
                  passwordController: passwordController,
                  isVisible: isVisible,
                  toggleVisibility: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                ),
                const Gap(15),
              
                SignUpButton(
                  formKey: formKey,
                  emailController: emailController,
                  passwordController: passwordController,
                  nameController: nameController,
                ),
                const Gap(10),
                const Gap(50),
                Loginhere(
                  onPressed: () {
                    pushWithReplacement(context, const LoginView());
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
