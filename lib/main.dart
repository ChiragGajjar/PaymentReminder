import 'package:flutter/material.dart';
import 'package:payment_app/login/login_screen.dart';
import 'package:payment_app/onboarding/welcome_screen1.dart';
import 'package:payment_app/search_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage1(),
    );
  }
}
