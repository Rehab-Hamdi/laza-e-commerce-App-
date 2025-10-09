import 'package:flutter/material.dart';
import 'package:laza/core/theme/app_palette.dart';
import 'package:laza/features/auth/presentation/screens/register_screen.dart';

import '../widgets/custom_button.dart';
import '../widgets/password_field.dart';
import '../widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 2,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.1),
            Center(
              child: Text(
                'Laza',
                style: TextStyle(
                  fontSize: 35,
                  color: AppPalette.appColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.12),
            Text(
              'Welcome back!',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            Text(
              'Please, Log In.',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.01),
            Form(
              key: formKey,
              child: Column(
                children: [
                  CustomTextFormField(
                    labelText: 'Email',
                    onFieldSubmitted: (_) {},
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validator: (email) {
                      return null;
                    },
                  ),
                  SizedBox(height: screenHeight * 0.015),
                  CustomPasswordFormFiled(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    controller: passwordController,
                    validator: (password) {
                      if (password!.isEmpty || password.isEmpty) {
                        return 'Please enter Your password';
                      } else if (password != password) {
                        return 'Repeat password not the same as your password';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forget Password',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppPalette.violetColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: customButton(
                label: 'Log In',
                backgroundColor: AppPalette.appColor,
                function: () {
                  if (formKey.currentState!.validate()) {
                    // i use push instead of pushReplacement to on;y make you able to return the previous state screen
                    // but in the real this is not acceptable
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (c) => const HomeScreen()),
                    // );
                    emailController.clear();
                    passwordController.clear();
                  }
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => const RegisterScreen()),
                    );
                  },
                  child: const Text(
                    'Sign Up',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppPalette.violetColor,
                      fontSize: 19,
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
