part of "../dashboard.dart";

class DashboardRouter {
  static String get index => "/dashboard";

  static List<GetPage> routes = [
    GetPage(name: index, page: () => DashboardPage()),
  ];
}
