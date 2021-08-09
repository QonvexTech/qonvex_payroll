import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qonvex_payroll/edit_profile.dart';
import 'edit_profile.dart';
import 'main.dart';

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
                RichText(
                    text: TextSpan(
                        text: 'Address:\n\n',
                        style: TextStyle(color: Colors.grey),
                        children: [
                      TextSpan(
                          text: '' +
                              Provider.of<Data>(context)
                                  .data['address']
                                  .toString(),
                          style: TextStyle(
                            color: Colors.black,
                          )
                      ),
                    ]
                    )
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                ),
                SizedBox(height: 20),
                RichText(
                    text: TextSpan(
                        text: 'Mailing Address:\n\n',
                        style: TextStyle(color: Colors.grey),
                        children: [
                      TextSpan(
                          text: '' +
                              Provider.of<Data>(context)
                                  .data['mailing address']
                                  .toString(),
                          style: TextStyle(
                            color: Colors.black,
                          )
                      ),
                    ]
                    )
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                ),
                SizedBox(height: 20),
                RichText(
                    text: TextSpan(
                        text: 'Lorem Ipsum:\n\n',
                        style: TextStyle(color: Colors.grey),
                        children: [
                      TextSpan(
                          text: '' +
                              Provider.of<Data>(context)
                                  .data['lorem ipsum']
                                  .toString(),
                          style: TextStyle(
                            color: Colors.black,
                          )
                      ),
                    ]
                    )
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => EditProfile(),
              )),
          child: const Icon(Icons.edit_rounded),
          backgroundColor: Colors.blue),
    );
  }
}
