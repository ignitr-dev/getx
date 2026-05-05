part of "../dashboard.dart";

class ApiDashboardClient implements DashboardClient {
  final api = ApiClient();

  @override
  Future<ApiResponse> index() async {
    return await api.get("/posts");
  }
}
