import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Signin_page.dart';
class RegisterPage extends StatefulWidget {
  static String id = "Register_page";
  RegisterPage({Key? key}) : super(key: key);
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
class _RegisterPageState extends State<RegisterPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var PhoneNumberController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          }),
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
                    'Email',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
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
                  Container(width: double.infinity,
                    child: ListTile(
                      title:Container(
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildDropDownButton('+81',),
                            Expanded(
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'phone Number is not registered';
                                  }
                                },
                                controller: PhoneNumberController,
                                keyboardType: TextInputType.phone,
                                onFieldSubmitted: (String value) {
                                  print(value);
                                },
                                decoration: InputDecoration(suffixIcon: Icon(Icons.warning,color: Colors.red,),
                                  labelText: 'Eg.812345678',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password is empty';
                      }
                    },
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.black,
                      ),
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
                      color: Colors.blue,
                      onPressed: () {
                        formkey.currentState!.validate();
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
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Has any account?",
                        style: TextStyle(color: Colors.black54),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push( context,MaterialPageRoute(builder: (context) =>  SigninPage()),);
                        },
                        child: Text(
                          'Sign in here',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                    ],
                  ),
                  Center(
                      child: Text(
                    'By regestering your account,you are agree to our',
                    style: TextStyle(color: Colors.black54),
                  )),
                  SizedBox(
                    height: 5.0,
                  ),
                  Center(
                      child: Text(
                    'Terms and Condition',
                    style: TextStyle(color: Colors.blue),
                  ))
                ]),
          ),
        ),
      ),
    );
  }

  Widget _buildDropDownButton(String currencyCategory) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            iconEnabledColor: Colors.black,
            style: TextStyle(
              color: Colors.black,
            ),
            dropdownColor: Colors.blue,
            value: currencyCategory,
            items: [
              '+81',
              '+297',
              '+61',
              '+55',
              '+237',
              '+1',
              '+86',
              '+20',
              '+33',
              '	+233',
              '+355'
            ]
                .map((String value) => DropdownMenuItem(
              value: value,
              child: Row(
                children: <Widget>[
                  Text(value),
                ],
              ),
            ))
                .toList(),
            onChanged: (value) {},
          ),
        ),
      ),
    );
  }
}
