import 'package:flutter/material.dart';
import 'package:jeans_kitchen/components/custom_button.dart';
import 'package:jeans_kitchen/components/custom_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  // final TextEditingController emailController = TextEditingController();

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
              "Let's create an account",
              style: TextStyle(fontSize: 18, color: Theme.of(context).colorScheme.inversePrimary),
            ),
            //email textfield
            const SizedBox(height: 25),

            CustomTextfield(controller: emailController, hintText: "Email", obcsureText: false),
            //password textfield
            const SizedBox(height: 10),
            CustomTextfield(
              controller: passwordController,
              hintText: "Password",
              obcsureText: true,
            ),

            //confirm password textfield
            const SizedBox(height: 10),
            CustomTextfield(
              controller: confirmPasswordController,
              hintText: "Confirm Password",
              obcsureText: true,
            ),

            //button
            const SizedBox(height: 30),
            CustomButton(text: "Sign Up", onTap: () {}),

            //not a member?, register now
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
