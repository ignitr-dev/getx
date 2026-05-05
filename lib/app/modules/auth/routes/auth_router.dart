part of "../auth.dart";

class AuthRouter {
  static String get login => "/login/index";
  static String get register => "/register/index";

  static List<GetPage> routes = [
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: register, page: () => RegisterPage()),
  ];
}
