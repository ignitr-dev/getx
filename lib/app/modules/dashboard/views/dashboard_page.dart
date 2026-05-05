part of "../dashboard.dart";

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});
  final controller = DashboardController.instance;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MasterLayout(
        title: "Dashboard",
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => Get.toNamed(SettingsRouter.index),
          ),
        ],
        body: controller.isBusy
            ? Center(child: LoadingIcon())
            : Padding(
                padding: EdgeInsets.all(0.0),
                child: Center(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Dashboard Page",
                          style: TextStyl.heading(context).sm.semibold,
                        ),
                        SizedBox(height: kSpacer),
                        Text(
                          "Build something awesome",
                          style: TextStyl.body(context).md.regular,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
