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
        preferredSize: Size.fromHeight(60.0),
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
                    image: AssetImage('assets/images/signIn.png'), fit: BoxFit.fill)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: formkey,
          child: ListView(
            physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 15),
                  child: Text(
                    'Welcome to Fasion Daily',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text(
                            'Help', style: TextStyle(color: Colors.teal),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.help,
                            color: Colors.teal,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
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
                    hintText: 'example@gmail.com',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 25,
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
                        hintText: '812345678',
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
                  height: 7,
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
                    hintText: 'Password',
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.teal,
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
                    color: Colors.teal,
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
                        side: BorderSide(color: Colors.teal)),
                    height: 50,
                    color: Colors.white,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          width: 30,
                          height: 30,
                        ),
                        Text(
                          'Sign With by Google',
                          style: TextStyle(
                            color: Colors.teal,
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SigninPage()),
                        );
                      },
                      child: Text(
                        'Sign in here',
                        style: TextStyle(color: Colors.teal),
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
                  style: TextStyle(color: Colors.teal),
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
          dropdownColor: Colors.teal,
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
