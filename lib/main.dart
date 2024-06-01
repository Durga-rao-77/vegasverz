import 'package:flutter/material.dart';
import 'package:vegasverz/views/presentation/login_screen.dart';
import 'package:vegasverz/views/presentation/password.dart';
import 'package:vegasverz/views/presentation/password_Reset_Screen.dart';
import 'package:vegasverz/views/presentation/password_reset.dart';
import 'package:vegasverz/views/presentation/password_second.dart';
import 'package:vegasverz/views/presentation/signup_screen.dart';
import 'package:vegasverz/views/presentation/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) =>  LoginScreen (),
        '/signup': (context) =>  const SignUpScreen(),
        '/WelcomeScreen': (context) =>  WelcomeScreen(),
        '/password': (context) =>  PasswordScreen(),
        '/otp': (context) => PasswordResetScreen (),
        '/passwordSecond':(context)=> PasswordSecondPage(),
        '/passwordReset':(context)=> PasswordDoneScreen(),
    },

    );
  }
}
