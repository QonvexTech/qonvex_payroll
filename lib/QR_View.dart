<<<<<<< HEAD
// import 'dart:io';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';
//
// class QRView extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _QRViewState();
// }
// class _QRViewState extends State<QRView> {
//   Barcode? result;
//   QRViewController? controller;
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//
//   // In order to get hot reload to work we need to pause the camera if the platform
//   // is android, or resume the camera if the platform is iOS.
//   @override
//   void reassemble() {
//     super.reassemble();
//     if (Platform.isAndroid) {
//       controller!.pauseCamera();
//     }
//     controller!.resumeCamera();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//          Expanded(flex: 4, child: _buildQrView(context)),
//           Expanded(
//             flex: 1,
//             child: FittedBox(
//               fit: BoxFit.contain,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   if (result != null)
//                     Text(
//                         'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
//                   else
//                     Text('Scan a code'),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: <Widget>[
//                       Container(
//                         margin: EdgeInsets.all(8),
//                         child: ElevatedButton(
//                             onPressed: () async {
//                               await controller?.toggleFlash();
//                               setState(() {});
//                             },
//                             child: FutureBuilder(
//                               future: controller?.getFlashStatus(),
//                               builder: (context, snapshot) {
//                                 return Text('Flash: ${snapshot.data}');
//                               },
//                             )),
//                       ),
//                       Container(
//                         margin: EdgeInsets.all(8),
//                         child: ElevatedButton(
//                             onPressed: () async {
//                               await controller?.flipCamera();
//                               setState(() {});
//                             },
//                             child: FutureBuilder(
//                               future: controller?.getCameraInfo(),
//                               builder: (context, snapshot) {
//                                 if (snapshot.data != null) {
//                                   return Text(
//                                       'Camera facing ${describeEnum(snapshot.data!)}');
//                                 } else {
//                                   return Text('loading');
//                                 }
//                               },
//                             )),
//                       )
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: <Widget>[
//                       Container(
//                         margin: EdgeInsets.all(8),
//                         child: ElevatedButton(
//                           onPressed: () async {
//                             await controller?.pauseCamera();
//                           },
//                           child: Text('pause', style: TextStyle(fontSize: 20)),
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.all(8),
//                         child: ElevatedButton(
//                           onPressed: () async {
//                             await controller?.resumeCamera();
//                           },
//                           child: Text('resume', style: TextStyle(fontSize: 20)),
//                         ),
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   // Widget _buildQrView(BuildContext context) {
//   //   // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
//   //   var scanArea = (MediaQuery.of(context).size.width < 400 ||
//   //       MediaQuery.of(context).size.height < 400)
//   //       ? 150.0
//   //       : 300.0;
//   //   // To ensure the Scanner view is properly sizes after rotation
//   //   // we need to listen for Flutter SizeChanged notification and update controller
//   //   return QRView(
//   //     key: qrKey,
//   //     onQRViewCreated: _onQRViewCreated,
//   //     overlay: QrScannerOverlayShape(
//   //         borderColor: Colors.red,
//   //         borderRadius: 10,
//   //         borderLength: 30,
//   //         borderWidth: 10,
//   //         cutOutSize: scanArea),
//   //     onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
//   //   );
//   // }
//
//   void _onQRViewCreated(QRViewController controller) {
//     setState(() {
//       this.controller = controller;
//     });
//     controller.scannedDataStream.listen((scanData) {
//       setState(() {
//         result = scanData;
//       });
//     });
//   }
//
//   void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
//     print('${DateTime.now().toIso8601String()}_onPermissionSet $p');
//     if (!p) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('no Permission')),
//       );
//     }
//   }
//
//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
// }
=======
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'placeholder_widget.dart';

class QRViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QRViewPageState();
}
class _QRViewPageState extends State<QRViewPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.white)
  ];
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  @override
  Widget build(BuildContext context) {
    final MediaQueryData deviceInfo = MediaQuery.of(context);
    final Size size = deviceInfo.size;
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      //body: _children[_currentIndex],
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
      body: Stack(
        children: <Widget>[
         Container(child: _buildQrView(context)),
          Positioned(
            top: size.height/2 + 150,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 80,
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.all(6),
                          child: ElevatedButton(
                            onPressed: () async {
                              await controller?.toggleFlash();
                              setState(() {});
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.transparent),
                              elevation:  MaterialStateProperty.resolveWith((states) => 0),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                    child: Icon(Icons.flash_on, color: Colors.white,)),
                                Text("Flash",
                                  style: TextStyle(
                                      color: Colors.white
                                  ),)
                              ],
                            ),
                          )
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: ElevatedButton(
                      onPressed: () async {
                        await controller?.flipCamera();
                        setState(() {});
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.transparent),
                        elevation:  MaterialStateProperty.resolveWith((states) => 0),
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.flip_camera_android, color: Colors.white),
                          Text("Flip Camera",
                            style: TextStyle(
                                color: Colors.white
                            ),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
        MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    //To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewPageCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.white,
          borderRadius: 5,
          borderLength: 20,
          borderWidth: 5,
          cutOutSize: 250
      ),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  void _onQRViewPageCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    print('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
>>>>>>> 2d7cddbd6099cf0496bcce0403a0a1282d1bfec7
