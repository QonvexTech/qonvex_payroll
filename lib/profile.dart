import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(height: 50, width: 50, child: Icon(Icons.arrow_back_ios,
                    size: 24,color: Colors.lightBlue[200],),
                    decoration: BoxDecoration(border: Border.all(color: Colors.lightBlue.shade200),
                        borderRadius: BorderRadius.all(Radius.circular(10))),),
                  Text('Profile'.toUpperCase(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  Container(
                    height: 24,width: 24,
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
