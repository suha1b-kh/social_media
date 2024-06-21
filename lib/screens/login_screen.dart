import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:social_media/components/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const Gap(20),
            MyTextField(
              hintText: 'Email',
              obsecureText: false,
              controller: emailController,
            ),
            const Gap(10),
            MyTextField(
              hintText: 'Password',
              obsecureText: false,
              controller: passwordController,
            ),
          ],
        ),
      ),
    );
  }
}
