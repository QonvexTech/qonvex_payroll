import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qonvex_payroll/Login_page.dart';
import 'package:qonvex_payroll/check_email.dart';
import 'package:qonvex_payroll/register.dart';
import 'package:qonvex_payroll/services/auth_service.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _userPasswordController =
      new TextEditingController();
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
              extendBodyBehindAppBar: true,
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(100.0),
                child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: AppBar(
                      toolbarHeight: 85,
                      automaticallyImplyLeading: false,
                      leading: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 30,
                            color: Colors.white,
                          ),
                          onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              )),
                      leadingWidth: 190,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    )),
              ),
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
                      height: 40,
                    ),
                    Text('Forgot\nPassword',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 40,
                            color: Colors.white)),
                    SizedBox(
                      height: 110,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: double.infinity,
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(labelText: 'Email Address'),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          Text(
                            'Send Instructions',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
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
                            iconSize: 30,
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
                                          builder: (_) => CheckEmail()));
                                }
                              }).whenComplete(
                                      () => setState(() => _isLoading = false));
                            },
                          ),
                        ])),
                    SizedBox(
                      height: 90,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
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
                    )
                  ]))),
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
      ),
    );
  }
}
