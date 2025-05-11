import 'package:flutter/material.dart';
import 'package:jeans_kitchen/components/custom_button.dart';
import 'package:jeans_kitchen/components/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 45,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            //message, app slogan
            const SizedBox(height: 25),
            Text(
              "Food delivery app",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            //email textfield
            const SizedBox(height: 25),

            CustomTextfield(
              controller: emailController,
              hintText: "Email",
              obcsureText: false,
            ),
            //password textfield
            const SizedBox(height: 10),
            CustomTextfield(
              controller: passwordController,
              hintText: "Password",
              obcsureText: true,
            ),
            //button
            const SizedBox(height: 30),
            CustomButton(text: "Sign In", onTap: () {}),

            //not a member?, register now
          ],
        ),
      ),
    );
  }
}
