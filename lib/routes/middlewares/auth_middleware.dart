import "package:flutter/material.dart";
import "package:ignitr_template/app/shared/shared.dart";
import "package:get/get.dart";

class AuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 9;

  AuthStore auth = AuthStore.instance;

  @override
  RouteSettings? redirect(String? route) {
    if (auth.check()) {
      return RouteSettings(name: "/login");
    }
    return null;
  }
}
