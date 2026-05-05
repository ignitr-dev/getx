part of "../dashboard.dart";

abstract class DashboardClient {
  static DashboardClient get instance {
    if (!Get.isRegistered<DashboardClient>()) {
      Get.lazyPut<DashboardClient>(() => ApiDashboardClient());
    }

    return Get.find<DashboardClient>();
  }

  Future<ApiResponse> index();
}
