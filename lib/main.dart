import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ScholerChat());
}

class ScholerChat extends StatelessWidget {
  const ScholerChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'LoginPage': (context) => const LoginPage(),
        RegisterPage.id: (context) => RegisterPage(),
      },
      initialRoute: 'LoginPage',
      home: const LoginPage(),
    );
  }
}
