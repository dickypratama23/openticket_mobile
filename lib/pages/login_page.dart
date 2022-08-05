import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:openticket_mobile/pages/home_page.dart';

import '../widgets/_button.dart';
import '../widgets/_icon.dart';
import '../widgets/_text_field.dart';

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
                CustomIcon(
                    icon: Icons.send_rounded,
                    size: 100,
                    color: Color(0xffE7AB79)),
                SizedBox(height: 75),
                Text("OPENTICKET",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 52,
                      color: Color(0xffE7AB79),
                    )),
                SizedBox(height: 50),
                CustomTextField(hintText: "Email"),
                SizedBox(height: 10),
                CustomTextField(hintText: "Password"),
                SizedBox(height: 10),
                CustomButton(
                    text: "Log In",
                    size: 18,
                    colorButton: Color(0xffB25068),
                    colorButtonText: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondRoute()));
                    }),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
