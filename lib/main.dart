import 'package:flutter/material.dart';
import 'package:pet_project/ui/welcome/welcome_screen.dart';
import 'package:pet_project/ui/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
