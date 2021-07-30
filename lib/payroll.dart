import 'package:flutter/material.dart';

class payroll extends StatefulWidget {
  @override
  _payrollState createState() => _payrollState();
}

class _payrollState extends State<payroll> {
  @override
  Widget build(BuildContext context) {
    return Container(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text('Remaining Leave:',
    style: TextStyle(color: Colors.grey, fontSize: 10)),
        ]
    )
    );
  }
}
