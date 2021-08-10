import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}
class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    print('size: ${deviceInfo.size}');
    print('padding: ${deviceInfo.padding}');
    SystemChrome.setEnabledSystemUIOverlays([]);
    final Size size = MediaQuery.of(context).size;
    print(size.width);
    return Scaffold(
      body: SafeArea(
              child: ListView(
                padding: EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                    height: 40,
                    color: Colors.grey.shade100,
                    child: const Center(child: Text('princess'),)
                  ),
                  Container(
                    height: 40,
                    color: Colors.grey.shade100,
                    child: const Center(child: Text('maemae'),),
                  ),
                  Container(
                    height: 40,
                    color: Colors.grey.shade100,
                    child: const Center(child: Text('licile'),),
                  ),
                  Container(
                    height: 40,
                    color: Colors.grey.shade100,
                    child: const Center(child: Text('lili'),),
                  ),
                  Container(
                    height: 40,
                    color: Colors.grey.shade100,
                    child: const Center(child: Text('lili x mae'),),
                  )
                ],
        ),
        ),
    );
  }
}
