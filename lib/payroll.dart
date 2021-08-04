import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class PayrollPage extends StatefulWidget {
  @override
  _PayrollPageState createState() => _PayrollPageState();
}

class _PayrollPageState extends State<PayrollPage> {
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
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Text("${selectedDate.toLocal()}".split(' ')[0]),
        SizedBox(
          height: 0,
        ),
        ElevatedButton(
          onPressed: () => _selectDate(context),
          child: Text('Select date'),
        ),
            Divider(
              height: 30,
              thickness: 2,
            ),
        Expanded(
            child: Container(
                padding: EdgeInsets.fromLTRB(20, 0, 15, 10),
                child: ListView(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'Remaining Leave :',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Days Leave :',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Weekdays :',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text('Days Work :',
                                style: TextStyle(color: Colors.grey)),
                            Text(
                              'Days Absent :',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Late Counts :',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Saturday Works :',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 30,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'Description',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Basic Salary :',
                            ),
                            Text(
                              'Additonal Salary :',
                            ),
                            Text(
                              'Saturday Pay :',
                            ),
                            Text(
                              'Late',
                            ),
                            Text(
                              'Absent',
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Earnings',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '6000.00',
                            ),
                            Text(
                              '0.00',
                            ),
                            Text(
                              '0.00',
                            ),
                            Text(
                              '---',
                            ),
                            Text('---'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Deductions',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '---',
                            ),
                            Text(
                              '---',
                            ),
                            Text(
                              '---',
                            ),
                            Text(
                              '90.00',
                            ),
                            Text('60.00'),
                            SizedBox(
                              height: 50,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            'TOTAL',
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'NET PAY',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                          Text(
                            '6000.0',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ])),
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '5850.0',
                              style: TextStyle(color: Colors.blue),
                            ),
                            Text(
                              '5850.0',
                            ),
                            SizedBox(
                              height: 30,
                            )
                          ]
                      ),
                    ),
                  ]
                  ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                Expanded(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                    Text(
                    'Five Thousand Eight HUndred Fifty Pesos',
                    style: TextStyle(color: Colors.grey),
                    ),
                      Divider(
                        height: 30,
                        thickness: 2,
                      ),
                ]
                )
            )
                ]
        )
      ]
          )
      ),
                )
                ]
    )
      )
    );
  }
}
