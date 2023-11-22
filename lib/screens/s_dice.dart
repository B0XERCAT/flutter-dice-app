import 'dart:math';
import 'package:after_layout/after_layout.dart';

import 'package:flutter/material.dart';
import 'package:login_example/constants/gaps.dart';
import 'package:login_example/constants/palette.dart';

int generateRandomNumber() {
  Random random = Random();
  return random.nextInt(6) + 1;
}

class DiceScreen extends StatefulWidget {
  final String userId;
  const DiceScreen({super.key, required this.userId});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen>
    with AfterLayoutMixin<DiceScreen> {
  var randNumber = generateRandomNumber();

  @override
  void afterFirstLayout(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Welcome'),
          content: Text('Hello ${widget.userId}'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void confirmLogout() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('LOGOUT'),
          content: Text('Are you sure, you want to logout?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: Text('Logout'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            confirmLogout();
          },
          child: Icon(Icons.logout),
        ),
        centerTitle: true,
        backgroundColor: Palette.themeColor,
        title: Text(
          'Dice by ${widget.userId}',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            gap70h,
            Center(
              child: Image.asset(
                'assets/images/dice$randNumber.png',
                height: 250,
              ),
            ),
            gap30h,
            GestureDetector(
              onTap: () {
                setState(() {
                  randNumber = generateRandomNumber();
                });
              },
              child: Icon(
                Icons.restart_alt_rounded,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
