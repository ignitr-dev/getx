import "package:ignitr_template/app/modules/modules.dart";
import "package:get/get.dart";

List<GetPage> routes = [
  ...splashRoutes,
  ...AuthRouter.routes,
  ...dashboardRoutes,
  ...settingsRoutes,
];
