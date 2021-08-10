import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qonvex_payroll/check_email.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}
class _ResetPasswordState extends State<ResetPassword> {
  bool _passwordVisible = false;
  final TextEditingController _userPasswordController =
  new TextEditingController();
  final TextEditingController _confirmPasswordController =
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
        child: Stack(children: [
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
                                    builder: (context) => CheckEmail(),
                                  ),
                                )),
                        leadingWidth: 190,
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                      )
                  ),
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
                Container(
                  width: double.infinity,
                  child: TextField(
                    controller: _confirmPasswordController,
                    decoration: InputDecoration(labelText: 'Confirm Password'),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                      child:
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Reset Password',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              icon: CircleAvatar(
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                ),
                                backgroundColor: Colors.grey,
                              ),
                              iconSize: 20,
                              onPressed: () {},
                            )
                          ]
                      )
                  ),
                )
            ]
          )
            )
          )
    ]
        )
    );
  }
}
