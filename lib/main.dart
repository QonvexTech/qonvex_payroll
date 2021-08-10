import 'package:flutter/material.dart';
import 'package:qonvex_payroll/Login_page.dart';
import 'package:qonvex_payroll/QR_View.dart';
import 'package:qonvex_payroll/edit_profile.dart';
import 'package:qonvex_payroll/check_email.dart';
import 'package:qonvex_payroll/forgot_password.dart';
import 'package:qonvex_payroll/general.dart';
import 'package:qonvex_payroll/history.dart';
import 'package:qonvex_payroll/landing_page.dart';
import 'package:qonvex_payroll/payroll.dart';
import 'package:qonvex_payroll/reset_password.dart';
import 'register.dart';
import 'profile.dart';
import 'package:flutter/services.dart';
import 'attendance.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: LoginPage()),
    );
  }
}

class Data extends ChangeNotifier {
  Map data = {'address': '', 'mailing address': '', 'lorem ipsum': ''};

  void updateAccount(input) {
    data = input;
    notifyListeners();
  }
}
