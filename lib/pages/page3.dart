import 'package:flutter/material.dart';
import '../Register_page.dart';
import '../Signin_page.dart';
class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  State<page3> createState() => _page1State();
}
class _page1State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body:SafeArea(
      child: Column(children:[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      elevation: 1,
                      primary: Colors.white38,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          width: 1000,
          height: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/offer.png'),
              )),
        ),
        SizedBox(height: 10),
        Text(
          "Get exclusive offer from",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 7),
        Text("your favourite restaurant",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text("We are constantly bringing your favourite food",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black45,
            )),
        Text("from your favourite restaurants with various",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black45,
            )),
        Text("types of offers",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black45,
            )),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 17,
              height: 5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Container(
              width: 17,
              height: 5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Container(
              width: 17,
              height: 5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Container(
          width: 340,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)),
            height: 50,
            color: Colors.teal,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SigninPage()),
              );
            },
            child: const Text(
              'Get Started',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don\'t have any account ?",
              style: TextStyle(color: Colors.black),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text(
                'Sign Up ',
                style: TextStyle(color: Colors.teal),
              ),
            ),
          ],
        ),
      ],),),);
  }
}
