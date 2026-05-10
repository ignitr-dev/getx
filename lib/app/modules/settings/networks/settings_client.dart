part of "../settings.dart";

abstract class SettingsClient {
  /// Create and get the instance of [SettingsClient]
  static SettingsClient get instance {
    if (!Get.isRegistered<SettingsClient>()) {
      Get.lazyPut<SettingsClient>(() {
        return ApiSettingsClient();
      });
    }

    return Get.find<SettingsClient>();
  }

  Future<ApiResponse> index();
}
