part of "../auth.dart";

abstract class AuthClient {
  /// Create and get the instance of [AuthClient]
  static AuthClient get instance {
    if (!Get.isRegistered<AuthClient>()) {
      Get.lazyPut<AuthClient>(() {
        return ApiAuthClient();
      });
    }

    return Get.find<AuthClient>();
  }

  /// Login the user
  Future<ApiResponse> login({required Map<String, dynamic> body});

  /// Registers user
  Future<ApiResponse> register({required Map<String, dynamic> body});

  /// Verifies OTP
  Future<ApiResponse> verifyOtp({required Map<String, dynamic> body});
}
