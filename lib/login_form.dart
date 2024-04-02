import 'package:flutter/material.dart';
import 'package:login_form/pallet.dart';
import 'package:login_form/widget/login_field.dart';
import 'package:login_form/widget/social_button.dart';
import 'package:login_form/widget/submit_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text(
                'Sign in',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 50),
              const SocialButtons(
                text: 'Continue with Google',
                iconPath: 'assets/svg/g_logo.svg',
              ),
              const SizedBox(height: 20),
              const SocialButtons(
                text: 'Continue  with Facebook',
                iconPath: 'assets/svg/f_logo.svg',
                horizontalPadding: 90,
              ),
              const SizedBox(height: 15),
              const Text(
                'or',
                style: TextStyle(
                  color: Pallete.whiteColor,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 15),
              const LoginField(
                hintText: 'Email',
              ),
              const SizedBox(height: 20),
              const LoginField(
                hintText: 'Password',
              ),
              const SizedBox(height: 15),
              const SubmitButton(
                text: 'Sign in',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
