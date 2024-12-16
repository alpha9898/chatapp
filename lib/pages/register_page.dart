import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  static String id = 'registerPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            const SizedBox(
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
            const SizedBox(
              height: 75,
            ),
            const Row(
              children: [
                Text(
                  'REGISTER',
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
              text: "REGISTER",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'already have an account?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    '  login',
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
