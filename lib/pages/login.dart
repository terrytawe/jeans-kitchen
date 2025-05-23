import 'package:flutter/material.dart';
import 'package:jeans_kitchen/components/custom_button.dart';
import 'package:jeans_kitchen/components/custom_textfield.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void authenticate() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

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
              style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.inversePrimary),
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
            //button
            const SizedBox(height: 30),
            CustomButton(text: "Sign In", onTap: authenticate),

            //not a member?, register now
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a registered?",
                  style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register now",
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
