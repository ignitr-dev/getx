part of "../settings.dart";

class SettingsRouter {
  static String get index => "/settings";

  static List<GetPage> routes = [
    GetPage(name: index, page: () => SettingsPage()),
  ];
}
