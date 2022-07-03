// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:task/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:task/routes/routes.dart';
import 'package:task/views/Homepage.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            child: Image.asset('images/image4.jpg'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            height: 100.0,
            child: Center(
              child: Row(
                children: [
                  Text(
                    '~WELCOME TO ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'WALLPS~',
                    style: TextStyle(
                        color: ConstantColors.box,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(35.0)),
                color: Color.fromARGB(255, 24, 24, 24)),
            height: 330.0,
            width: 330.0,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'E-mail',
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 50),
                Container(
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: ConstantColors.accentColor,
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 20),
                        backgroundColor: ConstantColors.box),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: Duration(milliseconds: 1000),
                          backgroundColor: ConstantColors.box,
                          content: Text('Welcome to Wallps')));
                      Navigator.of(context).popAndPushNamed(homePage);
                    },
                    child: Text('Login'),
                  ),
                ),
              ],
            ),
          ),
        ])));
  }
}
