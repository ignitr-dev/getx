import "package:ignitr_template/app/modules/modules.dart";
import "package:get/get.dart";

List<GetPage> routes = [
  ...SplashRouter.routes,
  ...AuthRouter.routes,
  ...DashboardRouter.routes,
  ...SettingsRouter.routes,
];
