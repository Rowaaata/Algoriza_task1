import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/Register_page.dart';

class SigninPage extends StatefulWidget {
  static String id = 'Signin_page';
  SigninPage({Key? key}) : super(key: key);
  @override
  State<SigninPage> createState() => _SigninPageState();
}
class _SigninPageState extends State<SigninPage> {
  var PhoneNumberController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool showError = false;
  final List<String> dropList = [
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
  ];
  String phoneCode = '+81';
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
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          key: formkey,
          child: ListView(
              physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              children: [
                Padding(
                  padding:const EdgeInsets.only(top: 20, bottom: 15),
                  child: Text(
                    'Welcome to Fasion Daily',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
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
                      width: 206,
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
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        setState(() {
                          showError = true;
                        });
                        return 'phone Number is not registered';
                      } else {
                        setState(() {
                          showError = false;
                        });
                      }
                    },
                    controller: PhoneNumberController,
                    keyboardType: TextInputType.phone,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                        suffixIcon: Visibility(
                          visible: showError,
                          child: Icon(
                            Icons.warning,
                            color: Colors.red,
                          ),
                        ),
                        prefixIcon: _buildDropDownButton(
                          phoneCode,
                        ),
                        hintText: 'Eg.812345678',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red))
                      //border: OutlineInputBorder(),
                    ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Divider(),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'or',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Divider(),
                    ),
                  ],
                ),
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
                      "Doesn\'t has any account ?",
                      style: TextStyle(color: Colors.black54),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()),
                        );
                      },
                      child: Text(
                        'Register here ',
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
    );
  }
  Widget _buildDropDownButton(String currencyCategory) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          iconEnabledColor: Colors.black,
          style: TextStyle(
            color: Colors.black,
          ),
          isExpanded: false,
          dropdownColor: Colors.blue,
          value: currencyCategory,
          items: dropList
              .map((String value) => DropdownMenuItem(
            value: value,
            child: Text(value),
          ))
              .toList(),
          onChanged: (value) {
            setState(() {
              phoneCode = "$value";
            });
          },
        ),
      ),
    );
  }
}


