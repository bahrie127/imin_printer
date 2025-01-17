import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:imin_printer/enums/print_size_imin.dart';
import 'package:imin_printer/imin_printer.dart';
import 'package:imin_printer/imin_printer_platform_interface.dart';
import 'package:imin_printer/imin_printer_method_channel.dart';
import 'package:imin_printer/print_style.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockIminPrinterPlatform
    with MockPlatformInterfaceMixin
    implements IminPrinterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> initPrinter(PrintSizeImin printSizeImin) => Future.value('init');

  @override
  Future<String> getStatus() => Future.value('active');

  @override
  Future<String> printBytes(Uint8List bytes) {
    return Future.value('success');
  }

  @override
  Future<String> printText(String text, PrintStyle printStyle) {
    return Future.value(text);
  }

  @override
  Future<String> print2ColumnsText(List<String> listText, PrintStyle printStyle) {
    return Future.value(listText.first);
  }

  @override
  Future<String> setStyle(PrintStyle printStyle) {
    return Future.value('success');
  }

  @override
  Future<String> printBitmap(Uint8List bytes) {
    return Future.value('success');
  }

  @override
  Future<String> printBitmapBase64(String base64) {
    return Future.value('success');
  }

  @override
  Future<String?> setPrintSize(PrintSizeImin printSizeImin) {
    return Future.value('success');
  }

  @override
  Future<String> clearLCDScreen() {
    return Future.value('success');
  }

  @override
  Future<String> fullCut() {
    return Future.value('success');
  }

  @override
  Future<String> getModelName() {
    return Future.value('success');
  }

  @override
  Future<String?> initLCDManager() {
    return Future.value('success');
  }

  @override
  Future<String> partialCut() {
    return Future.value('success');
  }

  @override
  Future<String> sendBitmapBase64LCDScreen(String base64) {
    return Future.value('success');
  }

  @override
  Future<String> getBrandName() {
    return Future.value('success');
  }

  @override
  Future<String> openCashDrawer() {
    return Future.value('success');
  }

  @override
  Future<String> printQR(String data, int size) {
    return Future.value('success');
  }
}

void main() {
  final IminPrinterPlatform initialPlatform = IminPrinterPlatform.instance;

  test('$MethodChannelIminPrinter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelIminPrinter>());
  });

  test('getPlatformVersion', () async {
    IminPrinter iminPrinterPlugin = IminPrinter();
    MockIminPrinterPlatform fakePlatform = MockIminPrinterPlatform();
    IminPrinterPlatform.instance = fakePlatform;

    expect(await iminPrinterPlugin.getPlatformVersion(), '42');
  });
}
