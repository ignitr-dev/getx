part of "../settings.dart";

class SettingsRoutes {
  static String get settings => "/settings";
}

List<GetPage> settingsRoutes = [
  GetPage(name: "/settings", page: () => SettingsPage()),
];
