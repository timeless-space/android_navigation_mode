import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'android_navigation_mode_platform_interface.dart';

/// An implementation of [AndroidNavigationModePlatform] that uses method channels.
class MethodChannelAndroidNavigationMode extends AndroidNavigationModePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('android_navigation_mode');

  @override
  Future<AndroidNavigationType> getNavigationMode() async {
    final mode = await methodChannel.invokeMethod<int>('getNavigationMode');
    switch (mode) {
      case 0:
        return AndroidNavigationType.threeButtons;
      case 1:
        return AndroidNavigationType.twoButtons;
      case 2:
        return AndroidNavigationType.fullScreenGesture;
    }
    return AndroidNavigationType.threeButtons;
  }
}
