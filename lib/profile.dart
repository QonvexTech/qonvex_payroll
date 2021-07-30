import 'dart:typed_data';

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _PayrollState createState() => _PayrollState();
}

class _PayrollState extends State<Profile> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0),
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: AppBar(
                toolbarHeight: 85,
                centerTitle: true,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                  onPressed: () {
                    //navigation
                  },
                ),
                leadingWidth: 190,
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Text(
                  'Profile'.toUpperCase(),
                  style: TextStyle(color: Colors.black),
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.more_vert_outlined, color: Colors.black),
                    onPressed: () {
                      //  navigation
                    },
                  )
                ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            child: const Icon(Icons.edit_rounded),
            backgroundColor: Colors.blue),
        body: Column(
          children: <Widget>[
            // construct the profile details widget here
            SizedBox(
                height: 280,
                child: Column(
                  children: [
                    CircleAvatar(
                        radius: 70,
                        child: ClipOval(
                            child: Image.network(
                          'https://jichangwookkitchen.files.wordpress.com/2020/12/20201201516452.jpg?w=584',
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ))),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Ji Chang Wook',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        SizedBox(height: 2.0),
                        Text('jichang_wook@example.com',
                            style: TextStyle(
                                color: Colors.blue,
                                fontStyle: FontStyle.italic)),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Employee ID:',
                                style: TextStyle(
                                  color: Colors.grey,
                                )),
                            Text(
                              '12345',
                              style: TextStyle(color: Colors.black),
                            )
                          ]),
                    ),
                    Divider(
                      height: 20,
                      thickness: 3,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Text(
                                  '7',
                                  style: TextStyle(color: Colors.blue),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'Designation',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
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
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Text(
                                  '06/017/2020',
                                  style: TextStyle(color: Colors.blue),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'Hired Date',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            Divider(
              color: Colors.blue,
              // height: 20,
              thickness: 5,
              indent: 1,
              endIndent: 1,
            ),
            // the tab bar with two items
            SizedBox(
              height: 75,
              child: AppBar(
                backgroundColor: Colors.white,
                // elevation: 0,
                bottom: TabBar(
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.blue,
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.person_outline,
                        // size: 35,
                        color: Colors.grey,
                      ),
                      text: 'General',
                    ),
                    Tab(
                        icon: Icon(Icons.call_rounded,
                            // size: 35,
                            color: Colors.grey),
                        text: 'Contacts'),
                    Tab(
                      icon: Icon(Icons.calendar_today_rounded,
                          // size: 35,
                          color: Colors.grey),
                      text: 'Attendace',
                    ),
                    Tab(
                      icon: Icon(Icons.account_balance_wallet_rounded,
                          // size: 35,
                          color: Colors.grey),
                      text: 'Payroll',
                    ),
                  ],
                ),
              ),
            ),
            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: ListView(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Complete Address',
                                  style: TextStyle(color: Colors.grey)),
                              SizedBox(height: 20),
                              Divider(
                                height: 20,
                                thickness: 3,
                                // indent: 2,
                                // endIndent: 2,
                              ),
                              Container(
                                padding:
                                    EdgeInsets.only(left: 5, right: 5, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Mailing Address',
                                        style: TextStyle(color: Colors.grey)),
                                    SizedBox(height: 20),
                                    Divider(
                                      height: 20,
                                      thickness: 3,
                                      // indent: 2,
                                      // endIndent: 2,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 5, right: 5, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Lorem Ipsum',
                                              style: TextStyle(
                                                  color: Colors.grey)),
                                          SizedBox(height: 20),
                                          Divider(
                                            height: 20,
                                            thickness: 3,
                                            // indent: 2,
                                            // endIndent: 2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.pink,
                  ),
                  Container(
                    color: Colors.white,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = !selected;
                        });
                      },
                      child: Center(
                        child: AnimatedContainer(
                          width: selected ? 200.0 : 100.0,
                          height: selected ? 100.0 : 200.0,
                          color: selected ? Colors.red : Colors.blue,
                          alignment:
                          selected ? Alignment.center : AlignmentDirectional.topCenter,
                          duration: const Duration(seconds: 2),
                          curve: Curves.fastOutSlowIn,
                          child: const FlutterLogo(size: 75),
                        ),
                      ),
                    )
                  )
    ]
                    ),
                  )
                ],
              ),
            )
<<<<<<< HEAD
            //       // second tab bar viiew widget
            //       Container(
            //         color: Colors.pink,
            //         child: Center(
            //           child: Text(
            //             'Car',
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
=======
          ],
        ),
      ),
>>>>>>> 7688b01d45ead4d0a9fc85fcf335e43c7c7a1c36
    );
  }
}
