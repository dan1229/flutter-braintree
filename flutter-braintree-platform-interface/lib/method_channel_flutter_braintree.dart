

import 'flutter_braintree_platform_interface.dart';

/// An implementation of [FlutterBraintreePlatform] that uses method channels.
class MethodChannelFlutterBraintree extends FlutterBraintreePlatform {

  @override
  Future<void> init() {
    print("initializing...");
  }

  @override
  Future<void> dispose() {
    print("disposing...");
  }

}