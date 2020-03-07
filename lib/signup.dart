import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/login.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          alignment: Alignment.bottomLeft,
          height: MediaQuery.of(context).size.height / 1.7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 100,
                width: 150,
                margin: EdgeInsets.only(top: 60),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("asset/img/logo.jpg"))),
              ),
              Expanded(child: Container()),
              Container(
                child: Text("Motor\n Skill\n Assessment",
                    style: GoogleFonts.russoOne(
                        height: 1.7, fontSize: 37, letterSpacing: 1)),
              ),
            ],
          ),
          // color: Colors.teal,
        ),
        Expanded(
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(children: [
                TextField(
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  decoration: InputDecoration(
                      labelText: 'Email or User Name',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          letterSpacing: 1,
                          color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink))),
                ),
                Container(height: 15),
                TextField(
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          letterSpacing: 1,
                          color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink))),
                ),
                Container(height: 25),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(
                          1, 0.0), // 10% of the width, so there are ten blinds.
                      colors: [
                        const Color(0xFFdd2476),
                        const Color(0xFFff512f)
                      ],
                    ),
                  ),
                  child: Center(
                      child: Text("Sign Up",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 20))),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Have a account?",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        Container(
                          width: 40,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: Text("Login",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                        )
                      ],
                    ))
              ])),
        )
      ]),
    );
  }
}
