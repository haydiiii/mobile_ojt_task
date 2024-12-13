import 'package:flutter/material.dart';
import 'package:mobile_ojt_task/core/widget/custm_txt_formfield.dart';

class EmailTextFfield extends StatelessWidget {
   final TextEditingController emailController ;

  const EmailTextFfield({super.key, required this.emailController});
 @override

  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: 'example@ex.com',
      keyboardType: TextInputType.emailAddress,
      obscureText: false,
      validator: (value)=> (value!.isEmpty) ? 'Please Enter Email' : null,
      onPressed: () {},
      
    );
  }
}
