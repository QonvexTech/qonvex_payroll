import 'package:flutter/material.dart';
import 'Login_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.blueAccent.shade100),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
