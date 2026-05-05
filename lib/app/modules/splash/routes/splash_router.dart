part of "../splash.dart";

class SplashRouter {
  static String get index => "/splash/index";

  static List<GetPage> routes = [
    GetPage(name: index, page: () => SplashPage()),
  ];
}
