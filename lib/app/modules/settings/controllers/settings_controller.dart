part of "../settings.dart";

class SettingsController extends AppController {
  static SettingsController get instance {
    if (!Get.isRegistered<SettingsController>()) Get.put(SettingsController());
    return Get.find<SettingsController>();
  }

  /// Observables
  final RxString _selectedTheme = "system".obs;

  /// Getters
  String get selectedTheme => _selectedTheme.value;

  @override
  void onInit() {
    super.onInit();
    _selectedTheme(Storage.get<String>("theme_mode"));
  }

  /// Theme Switcher
  void changeTheme(BuildContext context, String themeMode) {
    _selectedTheme(themeMode);
    ThemeBuilder.of(context)?.changeThemeTo(_selectedTheme.value);
  }
}
