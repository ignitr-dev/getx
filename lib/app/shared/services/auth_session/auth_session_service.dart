part of "../../shared.dart";

abstract class AuthSessionService {
  /// Create and get the instance of [AuthSessionService]
  static AuthSessionService get instance {
    if (!Get.isRegistered<AuthSessionService>()) {
      Get.lazyPut<AuthSessionService>(() => ApiAuthSessionService());
    }

    return Get.find<AuthSessionService>();
  }

  /// Get and refresh user data
  Future<ApiResponse<UserModel?>> getUser();

  /// Logout the user from system
  Future<ApiResponse> logout();
}
