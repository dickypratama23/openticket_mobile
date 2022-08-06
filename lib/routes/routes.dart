import 'package:flutter/material.dart';
import 'package:openticket_mobile/pages/login_page.dart';
import 'package:openticket_mobile/pages/home_page.dart';

var customRoutes = <String, WidgetBuilder> {
  "/LoginPage" : (BuildContext context) => LoginPage(),
  "/HomePage" : (BuildContext context) => HomePage(),
};