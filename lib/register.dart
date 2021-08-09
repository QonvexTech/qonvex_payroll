import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qonvex_payroll/Login_page.dart';
import 'package:qonvex_payroll/landing_page.dart';
import 'package:qonvex_payroll/services/auth_service.dart';
import 'dart:ui';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  @override
  _RegisterState createState() => _RegisterState();
}
class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _userPasswordController =
      new TextEditingController();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _fullnameController = new TextEditingController();
  final TextEditingController _confirmPassController =
      new TextEditingController();
  final AuthService _authService = AuthService();
  bool spooner = false;
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    print('size: ${deviceInfo.size}');
    print('padding: ${deviceInfo.padding}');
    return SafeArea(
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
                        onPressed: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            )
                            )
                    ),
                    leadingWidth: 190,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  )
              ),
            ),
            body: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background 2.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Form(
                  key: _formkey,
                  child: ListView(children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Create\nAccount',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: Colors.grey.shade200,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (value) {
                        },
                      ),
                    ),
                    Container(
                        width: double.infinity,
                        child: TextFormField(
                          controller: _fullnameController,
                          decoration: InputDecoration(
                            labelText: "Full Name",
                            labelStyle: TextStyle(
                              color: Colors.grey.shade200,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade200),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade200),
                            ),
                          ),
                        )
                    ),
                    Container(
                        width: double.infinity,
                        child: TextFormField(
                            controller: _userPasswordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(
                                color: Colors.grey.shade200,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade200),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade200),
                              ),
                            )
                        )
                    ),
                    Container(
                      width: double.infinity,
                      child: TextFormField(
                          controller: _confirmPassController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Confirm Password",
                            labelStyle: TextStyle(
                              color: Colors.grey.shade200,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade200),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade200),
                            ),
                          )
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () => FocusScope.of(context).unfocus(),
                      child: Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sign up',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          IconButton(
                            icon: CircleAvatar(
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                ),
                                backgroundColor: Colors.grey),
                            iconSize: 50,
                            onPressed: () {
                              setState(() {
                                spooner = true;
                              });
                              _authService
                                  .register(
                                email: _emailController.text,
                                fullname: _fullnameController.text,
                                password: _userPasswordController.text,
                              )
                                  .then((value) {
                                if (value) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => Landing_Page()));
                                }
                              }).whenComplete(
                                      () => setState(() => spooner = false));
                            },
                          )
                        ],
                      )
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Container(
                        child: Row(
                      children: <Widget>[
                        Text('Already have an account?'),
                        FlatButton(
                              textColor: Colors.blue,
                            child: Text(
                              'Sign in',
                              style: TextStyle(fontSize: 17),
                            ),
                            onPressed: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                )))
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )
                    )
                  ]
                  ),
                ),
              ),
            ),
          ),
          spooner
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
