import 'package:flutter/material.dart';
import 'package:login/screens/firstpage.dart';
import 'package:login/screens/homepage.dart';
import 'package:login/screens/regis_login.dart';
import 'package:login/screens/registration.dart';
import 'package:login/screens/secondpage.dart';
import 'package:login/screens/thirdpage.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/firstpage': (context) => const FirstPage(),
        '/secondpage': (context) => const SecondPage(),
        '/thirdpage': (context) => const ThirdPage(),
        '/fifthpage': (context) => const Regisloginpage(),
        '/Registration': (context) => const Registration(),
      },
    );
  }
}
