import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qonvex_payroll/Login_page.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    print('size: ${deviceInfo.size}');
    print('padding: ${deviceInfo.padding}');
    SystemChrome.setEnabledSystemUIOverlays([]);
    final Size size = MediaQuery
        .of(context)
        .size;
    print(size.width);
    return GestureDetector(
        onTap: () =>
            FocusScope.of(context).unfocus()
        , child: Scaffold(
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
                      Icons.arrow_back_ios, size: 30, color: Colors.white,),
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => LoginPage(),
                ),
    )
    ),
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
              )
            )
        )
    );
  }
}
