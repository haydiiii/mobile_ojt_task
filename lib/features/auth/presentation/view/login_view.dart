import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_ojt_task/core/functions/app_routing.dart';
import 'package:mobile_ojt_task/core/functions/custom_load_dialog.dart';
import 'package:mobile_ojt_task/core/widget/show_dialog.dart';
import 'package:mobile_ojt_task/core/widget/show_error_dialog.dart';
import 'package:mobile_ojt_task/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:mobile_ojt_task/features/auth/presentation/cubit/auth_states.dart';
import 'package:mobile_ojt_task/features/auth/presentation/view/widget/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocListener<AuthCubit, AuthStates>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
            pop(context);

            showsuccessDialog(context: context, message: 'Login Success');
            log('Login Success');
          } else if (state is LoginErrorState) {
            log(state.error);
            showErrorDialog(context: context, message: state.error);
            pop(context);
          } else {
            showLoadingDialog(context);
          }
        },
        child: const Scaffold(
          body: SafeArea(child: LoginBody()),
        ),
      ),
    );
  }
}
