import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_braintree_platform_interface/flutter_braintree_platform_interface.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// The web implementation of [FlutterBraintreePlatform].
///
/// This class implements the `package:flutter-braintree` functionality for the web.
class FlutterBraintreePlugin extends FlutterBraintreePlatform {

  /// Registers this class as the default instance of [FlutterBraintreePlatform].
  static void registerWith(Registrar registrar) {
    FlutterBraintreePlatform.instance = FlutterBraintreePlugin();
  }


}