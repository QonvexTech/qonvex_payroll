import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CheckEmail extends StatefulWidget {
  @override
  _CheckEmailState createState() => _CheckEmailState();
}

class _CheckEmailState extends State<CheckEmail> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    print('size: ${deviceInfo.size}');
    print('padding: ${deviceInfo.padding}');
    SystemChrome.setEnabledSystemUIOverlays([]);
    final Size size = MediaQuery.of(context).size;
    print(size.width);
    return Scaffold(
        body: Stack(children: [
      Padding(
        padding: const EdgeInsets.all(120),
        child: Container(
          height: 120,
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("assets/email_icon.png"),
              alignment: Alignment.topCenter,
            ),
          ),
        ),
      ),
      Container(
          child: ListView(children: [
        SizedBox(
          height: 280,
        ),
        Center(
          child: Text('Check your mail',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 35,
                  color: Colors.black)),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'We have sent you a password recover\n Instructions to your email',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15),
        ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Container(
                  child:
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Open email app',
                          style: TextStyle(
                              color: Colors.blueAccent, fontSize: 30, fontWeight: FontWeight.bold),
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
                          onPressed: () {},
                        )
                      ])),
            )
      ],
          ),
      ),

    ]));
  }
}
