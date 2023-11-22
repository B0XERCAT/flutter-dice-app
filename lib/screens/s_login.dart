import 'package:flutter/material.dart';
import 'package:login_example/constants/gaps.dart';
import 'package:login_example/constants/palette.dart';
import 'package:login_example/screens/s_dice.dart';
import 'package:login_example/widgets/w_textform.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController id_controller = TextEditingController();
  TextEditingController pw_controller = TextEditingController();
  // states
  // login information
  // id, pw
  var userId = '';
  var password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Palette.themeColor,
        title: Text(
          'Dice App',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            gap45h,
            Column(
              children: [
                Transform.translate(
                  offset: Offset(-100, 0),
                  child: Lottie.asset(
                    'assets/animations/sun.json',
                    height: 150,
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, -20),
                  child:
                      Lottie.asset('assets/animations/cat.json', height: 200),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  TextForm(
                    text: 'Username',
                    icon: Icons.person,
                    controller: id_controller,
                  ),
                  gap10h,
                  TextForm(
                    text: 'Password',
                    icon: Icons.lock,
                    controller: pw_controller,
                  ),
                  gap30h,
                  GestureDetector(
                    onTap: () {
                      userId = id_controller.text;
                      password = pw_controller.text;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DiceScreen(userId: userId),
                        ),
                      );
                      setState(() {
                        id_controller.clear();
                        pw_controller.clear();
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Palette.themeColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'LOGIN',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Palette.darkGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
