import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var PhoneNumberController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/appbar.png'), fit: BoxFit.fill)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                      'Register',
                      style:
                          TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Text(
                      'Help',
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    Icon(Icons.bookmark)
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Email',

                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField( validator: (value){
                  if(value!.isEmpty){
                    return 'email is empty';
                  }
                },
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Eg.example@gmail.com',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Phone Number',

                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField( validator: (value){
                  if(value!.isEmpty){
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
                Text(
                  'Password',

                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: MaterialButton(
                    height: 50,
                    color: Colors.deepPurple,
                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    child: const Text(
                      'Register',
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
                )), SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: double.infinity,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.deepPurple)),
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
                            color: Colors.deepPurple,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),

                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Has any account?",style: TextStyle(color: Colors.black54),),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Sign in here",style: TextStyle(color: Colors.deepPurple),)
                    ],
                  ),
                SizedBox(
                  height: 30.0,
                ),
                Center(child: Text('By regestring your account,you are agree to our',style: TextStyle(color: Colors.black54),)),
                SizedBox(
                  height: 5.0,
                ),
                Center(child: Text('Terms and Condition',style: TextStyle(color: Colors.deepPurple),))

              ]),
        ),
      ),
    );
  }
}
