import 'package:flutter/material.dart';
import 'package:task1/Onboarding1_Page.dart';
import 'package:task1/Onboarding2_page.dart';
import 'package:task1/Signin_page.dart';
import 'package:task1/Register_page.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Onboarding_page()
    );
  }
}
