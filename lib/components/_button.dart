import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double size;
  final Color colorButton;
  final Color colorButtonText;

  const CustomButton({
    required this.text,
    required this.size,
    required this.colorButton,
    required this.colorButtonText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: MaterialButton(
        padding: const EdgeInsets.all(18),
        minWidth: double.infinity,
        onPressed: () {
          showAlert(context);
        },
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

showAlert(BuildContext context) {
  AlertDialog alert = const AlertDialog(
    title: Text("MyTitle"),
    content: Text("Missing COntent"),
    actions: null,
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      }
  );
}
