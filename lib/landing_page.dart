import 'package:flutter/material.dart';
import 'package:qonvex_payroll/QR_View.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Landing_Page extends StatefulWidget {
  @override
  _Landing_PageState createState() => _Landing_PageState();
}

class _Landing_PageState extends State<Landing_Page> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    QRViewPage(),
    Container(color: Colors.white),
    Container(color: Colors.grey)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped, // new
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner),
              label: ('Scan'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: ('History'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.create_sharp),
                label: ('Create')
            )
          ]
      ),
    );
  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
