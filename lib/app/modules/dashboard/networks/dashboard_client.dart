part of "../dashboard.dart";

abstract class DashboardClient {
  /// Create and get the instance of [DashboardClient]
  static DashboardClient get instance {
    if (!Get.isRegistered<DashboardClient>()) {
      Get.lazyPut<DashboardClient>(() {
        return ApiDashboardClient();
      });
    }

    return Get.find<DashboardClient>();
  }

  Future<ApiResponse> index();
}
