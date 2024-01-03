import 'android_navigation_mode_platform_interface.dart';

class AndroidNavigationMode {
  Future<AndroidNavigationType> getNavigationMode() {
    return AndroidNavigationModePlatform.instance.getNavigationMode();
  }
}
