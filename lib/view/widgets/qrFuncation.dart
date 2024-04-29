import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class QrCodeFunctions {
  //scan Qr
  static void scan() async {
    try {
      String code = await FlutterBarcodeScanner.scanBarcode(
          '#2A99CF', 'Cancel', true, ScanMode.QR);
      print('code is $code');
    } catch (e) {
      print(e);
    }
  }

  //write  Qr Code
  static Widget showCode() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BarcodeWidget(
          color: Colors.black,
          barcode: Barcode.qrCode(), // Barcode type and settings
          data: '1234567',
        )
      ],
    );
  }
}
