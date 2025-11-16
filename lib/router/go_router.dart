import 'package:demo_genui/features/four/pages/menu_four.dart';
import 'package:demo_genui/features/one/pages/menu_one.dart';
import 'package:demo_genui/features/three/pages/menu_three.dart';
import 'package:demo_genui/features/two/pages/menu_two.dart';
import 'package:demo_genui/widgets/ink_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/one',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        final currentUrl = state.uri.toString();
        return Scaffold(
          appBar: AppBar(title: Text(currentUrl.replaceFirst('/', ''))),
          body: child,
          bottomNavigationBar: SafeArea(
            child: Container(
              height: 54,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkButton(currentUrl: currentUrl, path: '/one'),
                  InkButton(currentUrl: currentUrl, path: '/two'),
                  InkButton(currentUrl: currentUrl, path: '/three'),
                  InkButton(currentUrl: currentUrl, path: '/four'),
                ],
              ),
            ),
          ),
        );
      },
      routes: [
        GoRoute(path: '/one', builder: (context, state) => MenuOne()),
        GoRoute(path: '/two', builder: (context, state) => MenuTwo()),
        GoRoute(path: '/three', builder: (context, state) => MenuThree()),
        GoRoute(path: '/four', builder: (context, state) => MenuFour()),
      ],
    ),
  ],
);
