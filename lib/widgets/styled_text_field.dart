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
    fillColor: const Color(0xffF0F0F0),
    filled: true,
    border: OutlineInputBorder(
      borderSide: const BorderSide(
        color:  Color(0xff4B3B2E), 
        width: 1.0) ,
      borderRadius: BorderRadius.circular(8.0))));
}
}