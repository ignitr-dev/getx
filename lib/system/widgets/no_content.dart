part of "../system.dart";

class NoContent extends StatelessWidget {
  const NoContent({super.key, this.message = "No Data Yet!", this.action, this.showTitle = true, this.title = "Oops!", this.icon});

  final String message;
  final String title;
  final Widget? action;
  final Widget? icon;
  final bool showTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon != null
                ? icon!
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: SvgPicture.asset(
                      assetIcon("not_found.svg"),
                      width: MediaQuery.of(context).size.width * 0.65,
                    ),
                  ),
            const SizedBox(height: kSpacer),
            if (showTitle) Text(title, style: Theme.of(context).textTheme.displaySmall),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0).copyWith(top: 8.0),
              child: Text(
                message,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
            action != null ? action! : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
