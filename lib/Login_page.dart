import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;
  final TextEditingController _UserPasswordController =
      new TextEditingController();

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
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                alignment: Alignment.topCenter,
              ),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  decoration: InputDecoration(labelText: 'Email Address'),
                ),
              ),
              Container(
                width: double.infinity,
                child: TextField(
                  controller: _UserPasswordController,
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        size: 17,
                        color: Theme.of(context).primaryColorDark,
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
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  print("onTap");},
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget> [
                    Text(
                    'Sign in',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  ),
                IconButton(
                 icon: CircleAvatar(child: Icon(Icons.arrow_forward_ios_rounded,
                 color: Colors.white,),
                 backgroundColor: Colors.grey,),
                     iconSize: 50,
                  onPressed: () {},
              ),
              ],
              ),
          ),
        ),
              TextButton(
                onPressed: () {},
                child: Text('Forgot Password?'),
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Text("Don't have an account?",),
                          FlatButton(
                            textColor: Colors.blue,
                            child: Text(
                              'Sign up',
                              style: TextStyle(fontSize: 17),
                            ),
                            onPressed: () {},
                          )
            ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),

          ),
            ]
          )
        ),
      ),
      )
    );
  }
}
