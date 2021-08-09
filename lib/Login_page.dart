import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:qonvex_payroll/forgot_password.dart';
import 'package:qonvex_payroll/landing_page.dart';
import 'package:qonvex_payroll/services/auth_service.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;
  final TextEditingController _userPasswordController =
      new TextEditingController();
  final TextEditingController _emailController = new TextEditingController();
  final AuthService _authService = AuthService();
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    print('size: ${deviceInfo.size}');
    print('padding: ${deviceInfo.padding}');
    SystemChrome.setEnabledSystemUIOverlays([]);
    final Size size = MediaQuery.of(context).size;
    print(size.width);
    return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            Scaffold(
                body: Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  alignment: Alignment.topCenter,
                ),
              ),
              child: ListView(children: [
                SizedBox(
                  height: 130,
                ),
                Text('Welcome\nBack',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 40,
                        color: Colors.white)),
                SizedBox(
                  height: 140,
                ),
                Container(
                  width: double.infinity,
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(labelText: 'Email Address'),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: TextField(
                    controller: _userPasswordController,
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 17,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sign in',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: CircleAvatar(
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.grey,
                        ),
                        iconSize: 50,
                        onPressed: () {
                          setState(() {
                            _isLoading = true;
                          });
                          _authService
                              .login(
                                  email: _emailController.text,
                                  password: _userPasswordController.text)
                              .then((value) {
                            if (value) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Landing_Page()));
                            }
                          }).whenComplete(
                                  () => setState(() => _isLoading = false));
                        },
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: TextButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ForgotPassword(),
                    )),
                    child: Text('Forgot Password?'),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Don't have an account?",
                      ),
                      FlatButton(
                          textColor: Colors.blue,
                          child: Text(
                            'Sign up',
                            style: TextStyle(fontSize: 17),
                          ),
                          onPressed: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Register(),
                              )))
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
              ]
              ),
            )
            ),
            _isLoading
                ? Container(
                    color: Colors.black54,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  )
                : Container()
          ],
        )
    );
  }
}
