part of "../settings.dart";

abstract class SettingsService extends BaseService {
  /// Create and get the instance of [SettingsService]
  static SettingsService get instance {
    if (!Get.isRegistered<SettingsService>()) {
      Get.lazyPut<SettingsService>(() => ApiSettingsService());
    }

    return Get.find<SettingsService>();
  }

  /// Do Something
  Future<ApiResponse> doSomething();
}
