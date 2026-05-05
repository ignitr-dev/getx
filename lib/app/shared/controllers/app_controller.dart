part of "../shared.dart";

class AppController extends GetxController {
  ScrollController scrollController = ScrollController(keepScrollOffset: false);

  RxBool setSticky = false.obs;
  final RxBool _isBusy = false.obs;

  bool get isSticky => setSticky.value;
  bool get isBusy => _isBusy.value;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(onScroll);
  }

  void onScroll() {
    if (scrollController.positions.last.pixels >= 72) {
      setSticky(true);
    } else {
      setSticky(false);
    }
  }

  /// Set the busy state
  void setBusy(bool val) {
    _isBusy(val);
    update();
  }

  static void quit() {
    SystemChannels.platform.invokeMethod("SystemNavigator.pop");
  }

  @override
  void onClose() {
    scrollController.removeListener(onScroll);
    scrollController.dispose();
    super.onClose();
  }
}
