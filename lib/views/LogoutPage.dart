import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/constants/color.dart';
import 'package:task/routes/routes.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          centerTitle: true,
          title: Text(
            'PROFILE',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: ConstantColors.box,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80.0,
          ),
          Icon(
            Icons.person_pin,
            color: Colors.white,
            size: 90.0,
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            child: Text(
              'Mokshik Trivedi',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(loginPage);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(milliseconds: 1000),
                      backgroundColor: ConstantColors.box,
                      content: const Text('Hope to see you back soon!'),
                    ));
                  },
                  icon: Icon(
                    Icons.logout_outlined,
                    color: Colors.white,
                  )),
              Container(
                child: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
