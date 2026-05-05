part of "../../system.dart";

class NotConnectedErrorPage extends StatelessWidget {
  const NotConnectedErrorPage({super.key, this.message = "You are not connected to internet!", this.action, this.actionLabel = "Retry"});

  final String? message;
  final VoidCallback? action;
  final String actionLabel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Image.asset(
                image("no-internet.png"),
                width: MediaQuery.of(context).size.width * 0.65,
              ),
            ),
            SizedBox(height: 24.0),
            Text("Oops!", style: Theme.of(context).textTheme.displaySmall),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0).copyWith(top: 8.0),
              child: Text(
                "$message",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
