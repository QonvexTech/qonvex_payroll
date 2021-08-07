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
      // body: Form(
      //   key: _formKey,
      //   child: Container(
      //     padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      //     child: ListView(
      //       children: [
      //         Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(right: 32.0),
      //               child: TextFormField(
      // controller: _addressController,
      //                 decoration:
      //                     InputDecoration(hintText: 'Complete Address'),
      // validator: (v) {
      //   if (v!.trim().isEmpty) {
      //     return 'Please enter a Complete Address';
      //   }
      //   return null;
      // },
      //               ),
      //             ),
      //           ],
      //         ),
      //         SizedBox(
      //           height: 20,
      //         ),
      //         Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(right: 32.0),
      //               child: TextFormField(
      // controller: _mailingController,
      //                 decoration:
      //                     InputDecoration(hintText: 'Mailing Address'),
      // validator: (v) {
      //   if (v!.trim().isEmpty) {
      //     return 'Please enter a Mailing Address';
      //   }
      //   return null;
      // },
      //               ),
      //             ),
      //           ],
      //         ),
      //         SizedBox(
      //           height: 20,
      //         ),
      //         Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(right: 32.0),
      //               child: TextFormField(
      // controller: _ipsumController,
      //                 decoration: InputDecoration(hintText: 'Lorem Ipsum'),
      // validator: (v) {
      //   if (v!.trim().isEmpty) {
      //     return 'Lorem Ipsum';
      //   }
      //   return null;
      // },
      //               ),
      //             ),
      //             SizedBox(
      //               height: 40,
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),

      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Address: ' +
                        Provider.of<Data>(context).data['address'].toString(),
                    style: TextStyle(color: Colors.grey)),
                SizedBox(height: 20),
                Text(
                    'Mailing Address:\n' +
                        Provider.of<Data>(context)
                            .data['mailing address']
                            .toString(),
                    style: TextStyle(color: Colors.grey)),
                SizedBox(height: 20),
                Text(
                    'Lorem Ipsum: ' +
                        Provider.of<Data>(context)
                            .data['lorem ipsum']
                            .toString(),
                    style: TextStyle(color: Colors.grey)),
                // Text('Complete Address',
                //     style: TextStyle(color: Colors.grey)),
                // SizedBox(height: 20),
                // Divider(
                //   height: 20,
                //   thickness: 3,
                //   // indent: 2,
                //   // endIndent: 2,
                // ),
                // Container(
                //   padding: EdgeInsets.only(left: 5, right: 5, top: 10),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text('Mailing Address',
                //           style: TextStyle(color: Colors.grey)),
                //       SizedBox(height: 20),
                //       Divider(
                //         height: 20,
                //         thickness: 3,
                //         // indent: 2,
                //         // endIndent: 2,
                //       ),
                //       Container(
                //         padding: EdgeInsets.only(left: 5, right: 5, top: 10),
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text('Lorem Ipsum',
                //                 style: TextStyle(color: Colors.grey)),
                //             SizedBox(height: 20),
                //             Divider(
                //               height: 20,
                //               thickness: 3,
                //               // indent: 2,
                //               // endIndent: 2,
                //             ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
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
