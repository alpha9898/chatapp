import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
