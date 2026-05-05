part of "../../system.dart";

class NotFoundErrorPage extends StatelessWidget {
  const NotFoundErrorPage({super.key, required this.message, this.action, this.actionLabel = "Retry"});

  final String message;
  final VoidCallback? action;
  final String actionLabel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: SvgPicture.asset(
              assetIcon("not_found.svg"),
              width: MediaQuery.of(context).size.width * 0.65,
            ),
          ),
          SizedBox(height: 16.0),
          Text("Oops!", style: Theme.of(context).textTheme.displaySmall),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0).copyWith(top: 8.0),
            child: Text(
              message,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(flex: 1),
          action != null
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0).copyWith(bottom: 32.0),
                  child: TextButton(
                    onPressed: action,
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                      minimumSize: Size(MediaQuery.of(context).size.width, 40.0),
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    ),
                    child: Text(
                      actionLabel,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.white),
                    ),
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
