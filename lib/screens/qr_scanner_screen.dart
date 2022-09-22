import 'dart:async';

import 'package:flutter/material.dart';
import 'package:barcode_scan2/barcode_scan2.dart';

import '../screens/my_home_screen.dart';
import '../screens/qr_result_screen.dart';
import '../widgets/qr_result.dart';

import '/colors.dart' as color;

class QrScannerScreen extends StatefulWidget {
  QrScannerScreen({Key? key, required this.title, required this.value})
      : super(key: key);

  String? title;
  int? value;

  @override
  State<QrScannerScreen> createState() => _QrScannerScreenState();
}

class _QrScannerScreenState extends State<QrScannerScreen> {
  bool isLoadingCheck = false;
  String? qr;
  bool camState = false;
  ScanResult? scanResult;

  var _autoEnableFlash = false;
  @override
  initState() {
    super.initState();
    checkResult();
  }

  checkResult() async {
    String? getData = await _scan();
    getData.length < 1
        ? Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const MyHomePage()))
        : Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => QRResultScreen(
                qrCode: getData, title: widget.title, value: widget.value),
          ));
    // : Navigator.of(context).pushReplacement(MaterialPageRoute(
    //     builder: (context) => QRResult(getData),
    //   ));
  }

  Future<String> _scan() async {
    final result = await BarcodeScanner.scan(
      options: ScanOptions(
        restrictFormat: [BarcodeFormat.dataMatrix],
        useCamera: 0,
        autoEnableFlash: _autoEnableFlash,
        android: const AndroidOptions(
          aspectTolerance: 0.5,
          useAutoFocus: true,
        ),
      ),
    );

    return result.rawContent;
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
