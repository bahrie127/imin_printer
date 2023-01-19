
import 'dart:typed_data';

import 'package:imin_printer/enums/print_size_imin.dart';
import 'package:imin_printer/print_style.dart';

import 'imin_printer_platform_interface.dart';

class IminPrinter {
  Future<String?> getPlatformVersion() {
    return IminPrinterPlatform.instance.getPlatformVersion();
  }

  Future<void> initPrinter({PrintSizeImin printSizeImin = PrintSizeImin.mm58}) async {
    IminPrinterPlatform.instance.initPrinter(printSizeImin);
  }

  Future<String> getStatus() async {
    return IminPrinterPlatform.instance.getStatus();
  }

  Future<void> printBytes(Uint8List bytes) async {
    IminPrinterPlatform.instance.printBytes(bytes);
  }

  Future<void> printText(String text, {PrintStyle printStyle = const PrintStyle()}) async {
    IminPrinterPlatform.instance.printText(text, printStyle);
  }

  Future<void> print2ColumnsText(List<String> listText, {PrintStyle printStyle = const PrintStyle()}) async {
    IminPrinterPlatform.instance.print2ColumnsText(listText, printStyle);
  }

  Future<void> printBitmap(Uint8List bytes) async {
    IminPrinterPlatform.instance.printBitmap(bytes);
  }

  Future<void> printBitmapBase64(String base64) async {
    IminPrinterPlatform.instance.printBitmapBase64(base64);
  }

  Future<void> setStyle(PrintStyle printStyle) async {
    IminPrinterPlatform.instance.setStyle(printStyle);
  }
}
