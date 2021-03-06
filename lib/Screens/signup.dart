import 'dart:ui';

import 'package:e_study/Screens/login.dart';
import 'package:e_study/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Signup extends StatefulWidget {
  // final TextEditingController nameController = TextEditingController();
  // final TextEditingController emailController = TextEditingController();
  // final TextEditingController passwordController = TextEditingController();
  // final ValueChanged<String> onChanged;
  // const Signup({
  //   Key? key,
  //   required this.onChanged,
  // }) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      height: 60,
                      child: Image.asset(
                        "assets/images/logo1.jpg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      "Estudy",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Learn from Home",
                      style: TextStyle(fontSize: 16, color: primaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Enter your real information",
                      style: TextStyle(fontSize: 16, color: primaryColor),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        cursorWidth: 2,
                        cursorRadius: Radius.circular(5.0),
                        decoration: InputDecoration(
                          icon: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: FaIcon(
                                FontAwesomeIcons.user,
                                color: Colors.black,
                                size: 20,
                              )),
                          hintText: "Enter Your Name",
                          // hintStyle:
                          //     TextStyle(fontSize: 15, color: Colors.black12),
                          labelText: "Name",
                          labelStyle:
                              TextStyle(fontSize: 18, color: primaryColor),
                          fillColor: Colors.white,
                          border: InputBorder.none,

                          // border: OutlineInputBorder(
                          //     // borderRadius: BorderRadius.circular(25.0),
                          //     // borderSide: BorderSide(),
                          //     ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        cursorWidth: 2,
                        cursorRadius: Radius.circular(5.0),
                        decoration: InputDecoration(
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Icon(
                              Icons.email_outlined,
                              color: Colors.black,
                            ),
                          ),
                          hintText: "Enter Your Email",
                          labelText: "Email",
                          labelStyle:
                              TextStyle(fontSize: 18, color: primaryColor),
                          fillColor: Colors.white,
                          border: InputBorder.none,

                          // border: OutlineInputBorder(
                          //     // borderRadius: BorderRadius.circular(25.0),
                          //     // borderSide: BorderSide(),
                          //     ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        cursorWidth: 2,
                        cursorRadius: Radius.circular(5.0),
                        obscureText: true,
                        // onChanged: onChanged,
                        decoration: InputDecoration(
                          icon: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Icon(
                              Icons.lock_open_outlined,
                              color: Colors.black,
                            ),
                          ),
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: primaryColor,
                          ),
                          hintText: "Enter Your Password",
                          labelText: "Password",
                          labelStyle:
                              TextStyle(fontSize: 18, color: primaryColor),
                          fillColor: Colors.white,
                          border: InputBorder.none,

                          // border: OutlineInputBorder(
                          //     // borderRadius: BorderRadius.circular(25.0),
                          //     // borderSide: BorderSide(),
                          //     ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        elevation: 5.0,
                        minWidth: 200.0,
                        height: 50,
                        color: primaryColor,
                        child: Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text(
                        "Or Signup with",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 45,
                          width: 135,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.facebook,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Facebook",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 45,
                          width: 135,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.red),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.google,
                                  size: 20,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Google",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: 14),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                "Log in",
                                style: TextStyle(
                                    color: tertiaryColor, fontSize: 14),
                              ),
                              Icon(
                                Icons.play_arrow,
                                size: 20,
                                color: tertiaryColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextfieldContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white),
      child: TextFormField(
        cursorColor: Colors.black,
        cursorHeight: 20,
        cursorWidth: 2,
        cursorRadius: Radius.circular(5.0),
        decoration: InputDecoration(
          icon: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Icon(
              Icons.email_outlined,
              color: Colors.black,
            ),
          ),
          hintText: "Enter Your Email",
          labelText: "Email",
          labelStyle: TextStyle(fontSize: 18, color: primaryColor),
          fillColor: Colors.white,
          border: InputBorder.none,

          // border: OutlineInputBorder(
          //     // borderRadius: BorderRadius.circular(25.0),
          //     // borderSide: BorderSide(),
          //     ),
        ),
      ),
    );
  }
}
