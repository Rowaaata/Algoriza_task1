import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Onboarding_page extends StatelessWidget {
  const Onboarding_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      elevation: 1,
                      primary: Colors.white38,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),

            ],
          ),
          //Image.asset('assets/images/b1.png'),
          
                
        ],
      ),
    );
  }
}
