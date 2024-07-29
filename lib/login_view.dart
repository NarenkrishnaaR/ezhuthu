import 'package:flutter/material.dart';
import 'package:ezhuthu/widgets/styled_text_field.dart';
import 'package:ezhuthu/widgets/styled_button.dart';

class LoginView extends StatefulWidget {
const LoginView({super.key});
@override
LoginViewState createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.white,
body: Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
  const SizedBox(height: 32),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 32),
  child: Align(alignment: Alignment.center,child:Image.asset('assets/images/logo.png'))
  ),
  const SizedBox(height: 24),
  configureLoginTextfields(),
  const SizedBox(height: 24),
  configureLoginButton()
  ]) 
  );
}

Widget configureLoginTextfields() {
return Column(
children: [
Padding(
    padding: const EdgeInsets.symmetric(horizontal: 32), 
  child: StyledTextField(hintText: "E-mail", controller: emailController),
  ),
  const SizedBox(height: 16),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 32), 
  child: StyledTextField(hintText: "Password", controller: passwordController, obscureText: true)
  ) 
]
);
}

Widget configureLoginButton() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 32), 
  child: SizedBox(
    height: 50, 
    width: double.infinity,
  child: StyledButton(
    title: "Login", 
    onPressed: () {
    }
  )
  )
);
}
}
