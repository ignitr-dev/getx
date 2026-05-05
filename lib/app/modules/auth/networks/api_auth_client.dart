part of "../auth.dart";

class ApiAuthClient implements AuthClient {
  final api = ApiClient();

  @override
  Future<ApiResponse> login({required Map<String, dynamic> body}) async {
    return await api.post("/login", body: body);
  }

  @override
  Future<ApiResponse> register({required Map<String, dynamic> body}) async {
    return await api.post("/register", body: body);
  }

  @override
  Future<ApiResponse> verifyOtp({required Map<String, dynamic> body}) {
    throw UnimplementedError();
  }
}
