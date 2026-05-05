part of "../dashboard.dart";

class DashboardRoutes {
  static String get dashboard => "/dashboard";
}

List<GetPage> dashboardRoutes = [
  GetPage(name: "/dashboard", page: () => DashboardPage()),
];
