import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class payroll extends StatefulWidget {
  @override
  _payrollState createState() => _payrollState();
}
class _payrollState extends State<payroll> {
  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    SystemChrome.setEnabledSystemUIOverlays([]);
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       child: Column(
           mainAxisSize: MainAxisSize.min,
           children: <Widget>[
       Text("${selectedDate.toLocal()}".split(' ')[0]),
    SizedBox(height: 0,),
    ElevatedButton(
    onPressed: () => _selectDate(context),
    child: Text('Select date'),
       ),
             Expanded(
               child: Container(
                 alignment: Alignment.center,
                 padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                 child: ListView(
                   children: [
                     Column(
                       children: [
                         SizedBox(
                           height: 20,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: const <Widget> [
                             Expanded(
                                 child: Text('Remaining Leave :', style: TextStyle(color: Colors.grey),)),
                             Expanded(
                                 child: Text('Total Weekdays :', style: TextStyle(color: Colors.grey))
                             )
                           ],
                         ),
                       ],
                     ),
                     SizedBox(height: 10),
                     Container(
                     )
                   ],
                 ),
               ),
             ),
         ]
         )
     ),
    );
  }
}
