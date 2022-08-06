import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  const CustomTextField({
    required this.hintText,
    required this.controller,
    this.obscureText = false
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Color(0xff774360)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
            ),
          ),
        ),
      ),
    );
  }
}
