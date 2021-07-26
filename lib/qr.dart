import 'package:flutter/material.dart';

class Scanner extends StatelessWidget {
  const Scanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
          bottomNavigationBar: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30), topLeft: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                child: SizedBox(
                    height: 100,
                  child: BottomNavigationBar(
                    currentIndex: _selectedIndex,
                    onTap: _onItemTapped,
                    elevation: 0,
                    selectedItemColor: Colors.blueGrey,
                    selectedLabelStyle: TextStyle(color: Colors.blueGrey),
                    items: <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                          icon: CircleAvatar(child: Icon(Icons.qr_code_scanner,
                          color: Colors.white,),
                          backgroundColor: Colors.grey,),
                          label: 'Scan'
                      ),
                      BottomNavigationBarItem(
                        icon: CircleAvatar(child: Icon(Icons.history,
                            color: Colors.white),
                            backgroundColor: Colors.grey),
                        label: 'History',
                      ),
                      BottomNavigationBarItem(
                        icon: CircleAvatar(child: Icon(Icons.create_sharp,
                            color: Colors.white),
                            backgroundColor: Colors.grey),
                        label: 'Create',
                      ),
                    ],
                  ),
                ),
              )
          )
      )
    );
  }
}
