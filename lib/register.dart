import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    MediaQueryData deviceInfo = MediaQuery.of(context);
    print('size: ${deviceInfo.size}');
    print('padding: ${deviceInfo.padding}');
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
          extendBodyBehindAppBar: true,
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(100.0),
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                  child: AppBar(
                    toolbarHeight: 85,
                    automaticallyImplyLeading: false, // hides leading widget
                    leading: IconButton(
                      icon: Icon(Icons.arrow_back_ios, size: 30, color: Colors.white,),
                      onPressed: (){
                      //  back button
                      },
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
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text('Create\nAccount',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
                    color: Colors.white),),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    child: TextField(
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
                        )
                    )
                  ),
                  Container(
                    width: double.infinity,
                    child: TextField(
                        decoration: InputDecoration(
                            labelText: "Username",
                          labelStyle: TextStyle(
                        color: Colors.grey.shade200,
                        ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                        )
                    )
                  ),
                  Container(
                    width: double.infinity,
                    child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                              color: Colors.grey.shade200,
                            ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                        )
                    )
                  ),
                  Container(
                    width: double.infinity,
                    child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Confirm Password",
                            labelStyle: TextStyle(
                              color: Colors.grey.shade200,
                            ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                        )
                    )
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sign up',
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
                          color: Colors.white),),
                          IconButton(
                            icon: CircleAvatar(child:Icon(Icons.arrow_forward_ios_rounded,
                            color: Colors.white,),
                            backgroundColor: Colors.grey),
                            iconSize: 50,
                            onPressed: (){},
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
                            onPressed: () {
                              //signup screen
                            },
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ))
                  ]
              ),
              ),
          ),
      ),
    );
  }
}
