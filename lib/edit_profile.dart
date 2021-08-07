import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class EditProfile extends StatelessWidget {
  static const String id = 'settings_screen';
  final formKey = GlobalKey<FormState>();
  final Map data = {'Address': String, 'MailingAdd': String, 'Ipsum': String};
  TextEditingController _addressController = new TextEditingController();
  TextEditingController _mailingAddressController = new TextEditingController();
  TextEditingController _ipsumController = new TextEditingController();

  @override
  void initState() {
    // super.initState();
    _addressController = TextEditingController();
    _mailingAddressController = TextEditingController();
    _ipsumController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Change Account Details')),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Form(
            key: formKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    controller: _addressController,
                    decoration: InputDecoration(labelText: 'Address'),
                    validator: (v) {
                      if (v!.trim().isEmpty) {
                        return 'Please enter a Complete Address';
                      }
                      return null;
                    },
                    onSaved: (input) => data['address'] = input,
                  ),
                  TextFormField(
                    controller: _mailingAddressController,
                    decoration: InputDecoration(labelText: 'Mailing Address'),
                    validator: (v) {
                      if (v!.trim().isEmpty) {
                        return 'Please enter a Mailing Address';
                      }
                      return null;
                    },
                    onSaved: (input) => data['mailing address'] = input,
                  ),
                  TextFormField(
                    controller: _ipsumController,
                    decoration: InputDecoration(labelText: 'Lorem Ipsum'),
                    validator: (v) {
                      if (v!.trim().isEmpty) {
                        return 'Lorem Ipsum';
                      }
                      return null;
                    },
                    onSaved: (input) => data['lorem ipsum'] = input,
                  ),
                  TextButton(
                    onPressed: () {
                      formKey.currentState!.save();
                      Provider.of<Data>(context, listen: false)
                          .updateAccount(data);

                      formKey.currentState!.reset();
                    },
                    child: Text('Save'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.blue,
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}