import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/_button.dart';
import '../components/_icon.dart';
import '../components/_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4C3A51),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomIcon(icon: Icons.send_rounded, size: 100, color: Color(0xffE7AB79)),
                const SizedBox(height: 75),
                Text(
                  "OPENTICKET",
                  style: GoogleFonts.bebasNeue(
                      fontSize: 52,
                      color: const Color(0xffE7AB79),
                  )
                ),
                const SizedBox(height: 50),
                const CustomTextField(hintText: "Email"),
                const SizedBox(height: 10),
                const CustomTextField(hintText: "Password"),
                const SizedBox(height: 10),
                const CustomButton(text: "Log In", size: 18, colorButton: Color(0xffB25068), colorButtonText: Colors.white),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}