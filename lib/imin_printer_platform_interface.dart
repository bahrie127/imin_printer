import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'imin_printer_method_channel.dart';

abstract class IminPrinterPlatform extends PlatformInterface {
  /// Constructs a IminPrinterPlatform.
  IminPrinterPlatform() : super(token: _token);

  static final Object _token = Object();

  static IminPrinterPlatform _instance = MethodChannelIminPrinter();

  /// The default instance of [IminPrinterPlatform] to use.
  ///
  /// Defaults to [MethodChannelIminPrinter].
  static IminPrinterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [IminPrinterPlatform] when
  /// they register themselves.
  static set instance(IminPrinterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}