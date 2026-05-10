part of "../settings.dart";

class ApiSettingsClient implements SettingsClient {
  final api = ApiClient();

  @override
  Future<ApiResponse> index() async {
    throw UnimplementedError();
  }
}
