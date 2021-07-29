import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                      radius: 70,
                      child: ClipOval(
                          child: Image.network(
                        'https://jichangwookkitchen.files.wordpress.com/2020/12/20201201516452.jpg?w=584',
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ))),
                ),
                Text('Ji Chang Wook',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                SizedBox(height: 2.0),
                Text('jichang_wook@example.com',
                    style: TextStyle(
                        color: Colors.blue, fontStyle: FontStyle.italic)),
                SizedBox(height: 20.0),
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
                SizedBox(height: 5.0),
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
                Divider(
                  color: Colors.blue,
                  height: 30,
                  thickness: 5,
                  indent: 1,
                  endIndent: 1,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.person_outline,
                              size: 35,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              //navigation
                            },
                          ),
                          Text(
                            'General',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.call_rounded,
                                size: 35, color: Colors.grey),
                            onPressed: () {
                              //navigartio
                            },
                          ),
                          Text(
                            'Contact',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.calendar_today_rounded,
                              size: 35,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              //
                            },
                          ),
                          Text(
                            'Attendace',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.account_balance_wallet_rounded,
                                size: 35,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                //navigation
                              }),
                          Text(
                            'Payroll',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 17,
                  thickness: 3,
                  indent: 1,
                  endIndent: 1,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: Row(
                    children: [
                      Text('Complete Address',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Divider(
                  height: 20,
                  thickness: 3,
                  indent: 20,
                  endIndent: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: Row(
                    children: [
                      Text('Mailing Address',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Divider(
                  height: 20,
                  thickness: 3,
                  indent: 20,
                  endIndent: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: Row(
                    children: [
                      Text('Lorem Ipsum', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Divider(
                  height: 20,
                  thickness: 3,
                  indent: 20,
                  endIndent: 20,
                ),
              ],
            ),
          )),
    );
  }
}
