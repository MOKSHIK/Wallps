// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task/constants/color.dart';
import 'package:task/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  try {
                    Navigator.of(context).pushNamed(logoutPage);
                  } catch (e) {
                    print(e);
                  }
                },
                icon: Icon(Icons.person))
          ],
          title: Text(
            'Wallpapers',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: ConstantColors.box,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Center(
              child: Material(
                color: ConstantColors.box,
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {},
                  child: Column(
                    children: [
                      Ink.image(
                        image: AssetImage('images/image4.jpg'),
                        height: 200,
                        width: 320,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Detail',
                        style: TextStyle(
                            fontSize: 20, color: Colors.white, height: 2),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Center(
              child: Material(
                color: ConstantColors.box,
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {},
                  child: Column(
                    children: [
                      Ink.image(
                        image: AssetImage('images/image4.jpg'),
                        height: 200,
                        width: 320,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Detail',
                        style: TextStyle(
                            fontSize: 20, color: Colors.white, height: 2),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Center(
              child: Material(
                color: ConstantColors.box,
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {},
                  child: Column(
                    children: [
                      Ink.image(
                        image: AssetImage('images/image4.jpg'),
                        height: 200,
                        width: 320,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Detail',
                        style: TextStyle(
                            fontSize: 20, color: Colors.white, height: 2),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
