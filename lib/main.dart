import 'package:flutter/material.dart';
import 'package:task/routes/routes.dart';
import 'package:task/views/LoginPage.dart';
import 'package:task/views/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: route,
      home: SplashScreen(),
    );
  }
}
