part of "../dashboard.dart";

class ApiDashboardClient implements DashboardClient {
  final api = ApiClient();

  @override
  Future<ApiResponse> index() async {
    throw UnimplementedError();
  }
}
