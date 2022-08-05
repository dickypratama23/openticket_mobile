import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4e7d3),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.send_rounded,
                  size: 100,
                ),
                SizedBox(height: 75),
                Text(
                  "OPENTICKET",
                  style: GoogleFonts.bebasNeue(
                      fontSize: 52
                  )
                ),
                SizedBox(height: 50),

                // email
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),

                // password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xff0881a3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New to site?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      " Create Account",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}