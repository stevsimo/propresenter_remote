import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';
import 'package:propresenter_remote/presentation/design/app_layout.dart';
import 'package:propresenter_remote/presentation/screens/config/config.screen.dart';
// import 'package:propresenter_remote/presentation/screens/home/home.screen.dart';
import 'package:propresenter_remote/presentation/screens/remote/remote.screen.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
// final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shellNav');

@Riverpod(keepAlive: true)
Raw<GoRouter> router(RouterRef ref) {
  final router = GoRouter(
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: kDebugMode ? true : false,
    initialLocation: '/config',
    routes: [
      /// Bottom Navigation
      StatefulShellRoute.indexedStack(
        builder: (BuildContext context, GoRouterState state, StatefulNavigationShell navigationShell) {
          Logger.root.info(state.uri);
          return AppLayout(navigationShell: navigationShell);
        },
        branches: [
          // /// Home path
          // StatefulShellBranch(
          //   navigatorKey: _shellNavigatorKey,
          //   routes: [
          //     GoRoute(
          //       path: '/',
          //       pageBuilder: (context, state) {
          //         return const NoTransitionPage(
          //           child: HomeScreen(),
          //         );
          //       },
          //     ),
          //   ],
          // ),

          /// Remote path
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/remote',
                pageBuilder: (context, state) {
                  return const NoTransitionPage(
                    child: RemoteScreen(),
                  );
                },
              ),
            ],
          ),

          /// Config path
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/config',
                pageBuilder: (context, state) {
                  return const NoTransitionPage(
                    child: ConfigScreen(),
                  );
                },
              ),
            ],
          ),
        ],
      )
    ],
  );

  ref.onDispose(router.dispose);
  return router;
}
