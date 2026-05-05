part of "../../shared.dart";

class ApiAuthSessionClient implements AuthSessionClient {
  final api = ApiClient();

  ApiAuthSessionClient() {
    getUser();
  }

  @override
  Future<ApiResponse<UserModel?>> getUser() async {
    final authStore = AuthStore.instance;

    if (authStore.token != null) {
      return await api.get<UserModel?>(
        "/profile",
        auth: true,
        parser: (json) => UserModel.fromJson(json),
      );
    } else {
      return ApiResponse.withError("Something wend wrong");
    }
  }

  @override
  Future<ApiResponse> logout() async {
    return await api.get("/logout", auth: true);
  }
}
