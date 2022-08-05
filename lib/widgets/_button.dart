import 'dart:ui';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double size;
  final Color colorButton;
  final Color colorButtonText;
  final Function() onPressed;

  const CustomButton({
    required this.text,
    required this.size,
    required this.colorButton,
    required this.colorButtonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: MaterialButton(
        padding: const EdgeInsets.all(18),
        minWidth: double.infinity,
        onPressed: onPressed,
        color: colorButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: size,
            color: colorButtonText,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
