import 'package:flutter/material.dart';
import 'package:qonvex_payroll/Login_page.dart';
import 'package:qonvex_payroll/globals/logged_user.dart';
import 'attendance.dart';
import 'general.dart';
import 'payroll.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}
class _ProfileState extends State<Profile> with TickerProviderStateMixin {
  TabController? _tabController;
  List<Widget> _tabs = [
    GeneralPage(),
    Attendance(),
    PayrollPage()
  ];
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
    _tabController!.addListener(_handleTabSelection);
  }
  void _handleTabSelection() {
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0),
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: AppBar(
                toolbarHeight: 85,
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Text(
                  'Profile'.toUpperCase(),
                  style: TextStyle(color: Colors.black),
                ),
                actions: [
                  PopupMenuButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    icon: Icon(
                      Icons.more_vert_rounded,
                      color: Colors.black,
                    ),
                    padding: EdgeInsets.only(left: 4),
                    offset: Offset(-10.0, kToolbarHeight),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 1,
                        child: GestureDetector(
                            child: Text(
                              'Log out',
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            }
                            ),
                      )
                    ],
                  ),
                ]
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
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
                        )
                        )
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                            '${LoggedUser?.details!.name ?? "---"}'
                                .toUpperCase(),
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        SizedBox(height: 2.0),
                        Text('${LoggedUser?.details!.email ?? "---"}',
                            style: TextStyle(
                                color: Colors.blue,
                                fontStyle: FontStyle.italic)
                        ),
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
                                )
                            ),
                            Text(
                              '${LoggedUser?.details!.ID ?? "---"}'
                                  .padLeft(5, "0"),
                              style: TextStyle(color: Colors.black),
                            )
                          ]
                      ),
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
                )
            ),
            Divider(
              color: Colors.blue,
              thickness: 5,
              indent: 1,
              endIndent: 1,
            ),
            SizedBox(
              height: 75,
              child: AppBar(
                backgroundColor: Colors.white,
                bottom: TabBar(
                  controller: _tabController,
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.blue,
                  indicatorColor: Colors.blue,
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.person_outline,
                        color: _tabController!.index == 0
                            ? Colors.blue
                            : Colors.grey,
                      ),
                      text: 'General',
                    ),
                    Tab(
                      icon: Icon(Icons.calendar_today_rounded,
                          color: _tabController!.index == 1
                              ? Colors.blue
                              : Colors.grey),
                      text: 'Attendance',
                    ),
                    Tab(
                      icon: Icon(Icons.account_balance_wallet_rounded,
                          color: _tabController!.index == 2
                              ? Colors.blue
                              : Colors.grey),
                      text: 'Payroll',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: _tabs),
            )
          ],
        ),
      ),
    )
    );
  }
}
