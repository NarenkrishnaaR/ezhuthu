import 'package:ezhuthu/widgets/app_colors.dart';
import 'package:flutter/material.dart';

class StyledTextField extends StatelessWidget {
final String hintText;
final TextEditingController controller;
final TextInputType keyboardType;
final bool obscureText;
final String? Function(String?)? validator;

const StyledTextField({
super.key,
required this.hintText,
required this.controller,
this.keyboardType = TextInputType.text,
this.obscureText = false,
this.validator,
});

@override
Widget build(BuildContext context) {
return TextFormField(
  controller: controller, 
  keyboardType: keyboardType, 
  obscureText: obscureText, 
  decoration: InputDecoration(
    hintText: hintText, 
    fillColor: AppColors.gray,
    filled: true,
    border: OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.primary, 
        width: 1.0) ,
      borderRadius: BorderRadius.circular(8.0))));
}
}