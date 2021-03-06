
import 'package:meta/meta.dart' show visibleForTesting;

import 'method_channel_flutter_braintree.dart';

/// The interface that implementations of flutter_braintree must implement.
///
/// Platform implementations should extend this class rather than implement it as `flutter_braintree`
/// does not consider newly added methods to be breaking changes. Extending this class
/// (using `extends`) ensures that the subclass will get the default implementation, while
/// platform implementations that `implements` this interface will be broken by newly added
/// [FlutterBraintreePlatform] methods.
abstract class FlutterBraintreePlatform {


  /// Only mock implementations should set this to true.
  ///
  /// Mockito mocks are implementing this class with `implements` which is forbidden for anything
  /// other than mocks (see class docs). This property provides a backdoor for mockito mocks to
  /// skip the verification that the class isn't implemented with `implements`.
  @visibleForTesting
  bool get isMock => false;



  static FlutterBraintreePlatform _instance = MethodChannelFlutterBraintree();

  /// The default instance of [FlutterBraintreePlatform] to use.
  ///
  /// Platform-specific plugins should override this with their own
  /// platform-specific class that extends [FlutterBraintreePlatform] when they
  /// register themselves.
  ///
  /// Defaults to [MethodChannelFlutterBraintree].
  static FlutterBraintreePlatform get instance => _instance;

  static set instance(FlutterBraintreePlatform instance) {
    if (!instance.isMock) {
      try {
        instance._verifyProvidesDefaultImplementations();
      } on NoSuchMethodError catch (_) {
        throw AssertionError(
            'Platform interfaces must not be implemented with `implements`');
      }
    }
    _instance = instance;
  }


  /// Initializes the platform interface and disposes all existing drop ins.
  ///
  /// This method is called when the plugin is first initialized
  /// and on every full restart.
  Future<void> init() {
    throw UnimplementedError('init() has not been implemented.');
  }

  /// Dispose of drop in plugin
  Future<void> dispose() {
    throw UnimplementedError('dispose() has not been implemented.');
  }


  // This method makes sure that FlutterBraintree isn't implemented with `implements`.
  //
  // See class doc for more details on why implementing this class is forbidden.
  //
  // This private method is called by the instance setter, which fails if the class is
  // implemented with `implements`.
  void _verifyProvidesDefaultImplementations() {}
}