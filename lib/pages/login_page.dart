import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import 'package:openticket_mobile/widgets/_button.dart';
import 'package:openticket_mobile/widgets/_icon.dart';
import 'package:openticket_mobile/widgets/_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _nik = TextEditingController();
  final _password = TextEditingController();

  Future<http.Response> _login() async {
    var url = Uri.http('192.168.90.219:8001', 'api/v1/login');
    final response = await http.post(url, body: {
      'nik': _nik.text,
      'password': _password.text
    });

    var result = json.decode(response.body);
    if (result['message'] != 'Unauthorized') {
      Navigator.pushReplacementNamed(context, '/HomePage');
    }

    return response;
  }

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
                CustomTextField(hintText: "Nomor Induk Karyawan", controller: _nik),
                SizedBox(height: 10),
                CustomTextField(hintText: "Password", controller: _password),
                SizedBox(height: 10),
                CustomButton(
                    text: "Log In",
                    size: 18,
                    colorButton: Color(0xffB25068),
                    colorButtonText: Colors.white,
                    onPressed: () {
                      _login();
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
