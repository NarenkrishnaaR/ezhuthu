import 'package:ezhuthu/widgets/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:ezhuthu/widgets/spacing.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});
  @override
  RegisterViewState createState() => RegisterViewState();

}

class RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.gray,
        title: const Text('Register'),
      ),
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          const SizedBox(height: Spacing.large),
          staticText()
        ]),
    );
  }

Widget staticText() {
  return const Padding(
    padding: EdgeInsets.symmetric(horizontal: Spacing.extraSmall),
    child: Text(
      "Register now to explore and engage with the world of literature",
      style: TextStyle(
        fontSize: 24, 
        fontWeight: FontWeight.bold, 
        color: AppColors.secondary, 
      ),
      textAlign: TextAlign.center,
    ),
  );
}
}