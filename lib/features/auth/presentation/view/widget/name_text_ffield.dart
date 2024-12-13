import 'package:flutter/material.dart';
import 'package:mobile_ojt_task/core/widget/custm_txt_formfield.dart';

class NameTextFfield extends StatelessWidget {
  final TextEditingController nameController;

  const NameTextFfield({super.key, required this.nameController});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: nameController,
      hintText: 'Haidi Khattab',
      keyboardType: TextInputType.name,
      obscureText: false,
      validator: (value) {
        if ( value == null || value.isEmpty) {
          return 'Please Enter Your Name';
          
        }else{
          return null;
        }
      } ,
      onPressed: () {},
    );
  }
}
