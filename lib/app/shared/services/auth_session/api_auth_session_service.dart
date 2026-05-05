part of "../../shared.dart";

class ApiAuthSessionService extends BaseService implements AuthSessionService {
  ApiAuthSessionService() {
    getUser();
  }

  @override
  Future<ApiResponse<UserModel?>> getUser() async {
    if (Storage.get<String>("token") != null) {
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
