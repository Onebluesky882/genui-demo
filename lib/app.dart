import 'package:demo_genui/widgets/ink_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Center extends StatelessWidget {
  final Widget? title;
  final Widget child;
  const Center({super.key, required this.child, this.title});

  @override
  Widget build(BuildContext context) {
    // final String currentUrl = GoRouterState.of(context).uri.toString();

    final router = GoRouter.of(context);
    final currentUrl = router.routeInformationProvider.value.uri.toString();
    return Scaffold(
      appBar: AppBar(title: title, backgroundColor: Colors.lightGreenAccent),
      body: child,

      // footer
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: .spaceAround,
          children: [
            InkButton(currentUrl: currentUrl, path: '/one'),
            InkButton(currentUrl: currentUrl, path: '/two'),
            InkButton(currentUrl: currentUrl, path: '/three'),
            InkButton(currentUrl: currentUrl, path: '/four'),
          ],
        ),
      ),
    );
  }
}
