part of "../splash.dart";

class SplashController extends AppController {
  static SplashController get instance {
    if (!Get.isRegistered<SplashController>()) Get.put(SplashController());
    return Get.find<SplashController>();
  }

  final auth = AuthStore.instance;

  @override
  void onInit() {
    super.onInit();
    redirectUser();
  }

  Future<void> redirectUser() async {
    if (Config.authRequired) {
      if (auth.check()) {
        await 5.delay(() => Get.offAllNamed("/dashboard"));
      } else {
        await 5.delay(() => Get.offAllNamed(AuthRouter.login));
      }
    } else {
      await 5.delay(() => Get.offAllNamed("/dashboard"));
    }
  }
}
