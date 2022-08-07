import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:openticket_mobile/pages/main_page.dart';
import 'package:openticket_mobile/routes/routes.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Openticket',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: Colors.white,
          displayColor: Colors.white
        )
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      routes: customRoutes
    );
  }
}