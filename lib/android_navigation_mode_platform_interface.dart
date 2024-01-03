import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'android_navigation_mode_method_channel.dart';

abstract class AndroidNavigationModePlatform extends PlatformInterface {
  /// Constructs a AndroidNavigationModePlatform.
  AndroidNavigationModePlatform() : super(token: _token);

  static final Object _token = Object();

  static AndroidNavigationModePlatform _instance =
      MethodChannelAndroidNavigationMode();

  /// The default instance of [AndroidNavigationModePlatform] to use.
  ///
  /// Defaults to [MethodChannelAndroidNavigationMode].
  static AndroidNavigationModePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AndroidNavigationModePlatform] when
  /// they register themselves.
  static set instance(AndroidNavigationModePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<AndroidNavigationType> getNavigationMode() {
    throw UnimplementedError('getNavigationMode() has not been implemented.');
  }
}

enum AndroidNavigationType {
  twoButtons,
  threeButtons,
  fullScreenGesture,
}
