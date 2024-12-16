import 'package:chat_app/constants.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            SizedBox(
              height: 75,
            ),
            Image.asset('assets/images/scholar.png', height: 100),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Scholer Chat',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'pacifico',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 75,
            ),
            const Row(
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Email',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Password',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'Login',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterPage.id);
                  },
                  child: const Text(
                    '  Register',
                    style: TextStyle(
                      color: Color(0xFFC7EDE6),
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
