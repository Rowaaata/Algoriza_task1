import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/pages/page1.dart';
import 'package:task1/pages/page2.dart';
import 'package:task1/pages/page3.dart';
import 'Register_page.dart';
import 'Signin_page.dart';
class Onboarding_page extends StatefulWidget {
  const Onboarding_page({Key? key}) : super(key: key);
  @override
  State<Onboarding_page> createState() => _Onboarding_pageState();
}
class _Onboarding_pageState extends State<Onboarding_page> {
  double _currentPageIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            page1(),
          page2(),
          page3(),
          ],
        ),
      ),
    );
  }
}
