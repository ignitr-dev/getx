part of "../../shared.dart";

abstract class AuthSessionClient {
  static AuthSessionClient get instance {
    if (!Get.isRegistered<AuthSessionClient>()) {
      Get.lazyPut<AuthSessionClient>(() => ApiAuthSessionClient());
    }

    return Get.find<AuthSessionClient>();
  }

  Future<ApiResponse<UserModel?>> getUser();

  Future<ApiResponse> logout();
}
