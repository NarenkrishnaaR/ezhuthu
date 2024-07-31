import 'package:ezhuthu/widgets/app_colors.dart';
import 'package:ezhuthu/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:ezhuthu/widgets/styled_text_field.dart';
import 'package:ezhuthu/widgets/styled_button.dart';
import 'package:ezhuthu/register_view.dart';

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
const SizedBox(height: Spacing.medium),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: Spacing.extraLarge),
child: Align(alignment: Alignment.center,child: Image.asset('assets/images/logo.png'))
),
const SizedBox(height: Spacing.large),
configureLoginTextfields(),
const SizedBox(height: Spacing.large),
configureLoginButton(),
const SizedBox(height: Spacing.large),
configureStaticText(),
const SizedBox(height: Spacing.small),
configureSocialMediaButtons(),
const SizedBox(height: Spacing.small),
configureRegisterAccountRow()
]) 
);
}

Widget configureLoginTextfields() {
return Column(
children: [
Padding(
  padding: const EdgeInsets.symmetric(horizontal: Spacing.extraLarge), 
child: StyledTextField(hintText: "E-mail", controller: emailController),
),
const SizedBox(height: Spacing.medium),
  Padding(
  padding: const EdgeInsets.symmetric(horizontal: Spacing.extraLarge), 
child: StyledTextField(hintText: "Password", controller: passwordController, obscureText: true)
) 
]
);
}

Widget configureLoginButton() {
return Padding(
  padding: const EdgeInsets.symmetric(horizontal: Spacing.extraLarge), 
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

Widget configureStaticText() {
return const Padding(
  padding: EdgeInsets.symmetric(horizontal: Spacing.extraLarge),
  child: Row(
    children: [
        Expanded(
        child: Divider(color: AppColors.primary),
      ),
        Padding(
        padding: EdgeInsets.symmetric(horizontal: Spacing.extraSmall),
        child: Text('Or Login with'),
      ),
        Expanded(
        child: Divider(color: AppColors.primary),
      ),
    ],
  ),
);
}

Widget configureSocialMediaButtons() {
return Padding(
  padding: const EdgeInsets.symmetric(horizontal: Spacing.extraLarge),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: IconButton(
          onPressed: () {
            
          },
          icon: Image.asset(
            'assets/images/icon_google.png',
            height: 48, 
            width: 48, 
          ),
        ),
      ),
      Expanded(
        child: IconButton(
          onPressed: () {
            
          },
          icon: Image.asset(
            'assets/images/icon_fb.png',
            height: 48,
            width: 48,
          ),
        ),
      ),
    ],
  ),
);
}

Widget configureRegisterAccountRow() {
return Padding(
  padding: const EdgeInsets.symmetric(horizontal: Spacing.extraLarge), 
  child: Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
    children:[ 
      const Text("Don't have an account?"),
      TextButton(
        onPressed: () {
          navigateToRegisterView(context);
        },
        style: TextButton.styleFrom(
          foregroundColor: AppColors.secondary, 
        ),
        child: const Text("Register"),
      ),
    ],
  ),
  )
);
}
void navigateToRegisterView(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const RegisterView()));
 }
}
