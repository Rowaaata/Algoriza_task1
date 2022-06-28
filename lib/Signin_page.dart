import 'package:flutter/material.dart';
import 'package:task1/Register_page.dart';

class SigninPage extends StatelessWidget {
  static String id = 'Signin_page';
  var PhoneNumberController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/appbar1.png'), fit: BoxFit.fill)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Welcome to Fasion Daily',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        'Sign in',
                        style: TextStyle(
                            fontSize: 29, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 189,
                      ),
                      Text(
                        'Help',
                        style: TextStyle(color: Colors.blue),
                      ),
                      Icon(
                        Icons.help,
                        color: Colors.blue,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Phone Number',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'phone is empty';
                      }
                    },
                    controller: PhoneNumberController,
                    keyboardType: TextInputType.phone,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Eg.812345678',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    child: MaterialButton(
                      height: 50,
                      color: Colors.blue,
                      onPressed: () {
                        formkey.currentState!.validate();
                      },
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Center(
                      child: Text(
                    'or',
                    style: TextStyle(color: Colors.black54),
                  )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: double.infinity,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Colors.blue)),
                      height: 50,
                      color: Colors.white,
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/google.png',
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            'Sign With by Google',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Doesn\'t has any account ?",
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push( context,MaterialPageRoute(builder: (context) =>  RegisterPage()),);
                        },
                        child: Text(
                          'SignUp ',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Center(
                      child: Text(
                    'Use the application according to policy rules, any',
                    style: TextStyle(color: Colors.black54),
                  )),
                  SizedBox(
                    height: 5.0,
                  ),
                  Center(
                      child: Text(
                    'kinds of violations will be subject to sanctions.',
                    style: TextStyle(color: Colors.black54),
                  ))
                ]),
          ),
        ),
      ),
    );
  }
}
