import 'package:flutter/material.dart';
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
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: customRoutes
    );
  }
}