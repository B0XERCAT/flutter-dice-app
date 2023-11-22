import 'package:flutter/material.dart';
import 'package:login_example/constants/palette.dart';

class TextForm extends StatelessWidget {
  final IconData icon;
  final String text;
  final TextEditingController controller;

  const TextForm({
    super.key,
    required this.icon,
    required this.text,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(
          color: Palette.lightGrey,
        ),
      ),
      child: TextFormField(
        obscureText: text == "Username" ? false : true,
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            icon,
            size: 30,
            color: Palette.lightGrey,
          ),
          hintText: text,
        ),
      ),
    );
  }
}
