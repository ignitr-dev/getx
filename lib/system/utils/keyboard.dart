part of "../system.dart";

class Keyboard {
  static void hide(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}

void hideKeyboard(BuildContext context) {
  return Keyboard.hide(context);
}
