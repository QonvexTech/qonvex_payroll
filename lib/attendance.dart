import 'package:flutter/material.dart';
import 'profile.dart';

class Attendance extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 20, left: 30, right: 30),
        children: [
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 10, right: 10),
              title: Row(
                children: [
                  Column(
                    children: [
                      Text('In'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('8:00pam'),
                      )
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 30,
                      child: VerticalDivider(
                        thickness: 2,
                        indent: 5,
                        endIndent: 0,
                        width: 20,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text('Out'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('9:00pm'),
                      )
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 30,
                      child: VerticalDivider(
                        thickness: 2,
                        indent: 5,
                        endIndent: 0,
                        width: 20,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '06-01-2021',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Wholeday',
                          style: TextStyle(color: Colors.green),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Row(
                  children: [
                    Column(
                      children: [
                        Text('In'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('----'),
                        )
                      ],
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          thickness: 2,
                          indent: 5,
                          endIndent: 0,
                          width: 20,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text('Out'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('----'),
                        )
                      ],
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          thickness: 2,
                          indent: 5,
                          endIndent: 0,
                          width: 20,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '06-02-2021',
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Absent',
                            style: TextStyle(color: Colors.red),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Row(
                  children: [
                    Column(
                      children: [
                        Text('In'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('8:00pam'),
                        )
                      ],
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          thickness: 2,
                          indent: 5,
                          endIndent: 0,
                          width: 20,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text('Out'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('12:00pm'),
                        )
                      ],
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          thickness: 2,
                          indent: 5,
                          endIndent: 0,
                          width: 20,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '06-03-2021',
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Halfday',
                            style: TextStyle(color: Colors.orange),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
