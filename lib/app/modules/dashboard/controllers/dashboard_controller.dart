part of "../dashboard.dart";

class DashboardController extends AppController {
  static DashboardController get instance {
    if (!Get.isRegistered<DashboardController>()) Get.put(DashboardController());
    return Get.find<DashboardController>();
  }

  final DashboardClient _dashboardService = DashboardClient.instance;

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  Future<void> getData() async {
    try {
      setBusy(true);
      ApiResponse response = await _dashboardService.index();

      if (response.hasError) {
        Toastr.of(Get.context!).error(message: "${response.error}");
        setBusy(false);
        return;
      }
      setBusy(false);
    } on Exception catch (e) {
      Get.to(() => ErrorPage(message: "$e"));
    } on Error catch (e) {
      Get.to(() => ErrorPage(message: "$e"));
    }
  }
}
