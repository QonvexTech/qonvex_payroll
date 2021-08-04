import 'package:flutter/material.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({Key? key}) : super(key: key);

  @override
  _GeneralPageState createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Complete Address', style: TextStyle(color: Colors.grey)),
                SizedBox(height: 20),
                Divider(
                  height: 20,
                  thickness: 3,
                  // indent: 2,
                  // endIndent: 2,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5, right: 5, top: 10),
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
                        padding: EdgeInsets.only(left: 5, right: 5, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Lorem Ipsum',
                                style: TextStyle(color: Colors.grey)),
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
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.edit_rounded),
          backgroundColor: Colors.blue),
    );
  }
}
