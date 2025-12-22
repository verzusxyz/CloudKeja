import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/services.dart';

class OverlayContextMiddleware extends AutoRouteGuard {
  OverlayContextMiddleware(this.ref);
  final WidgetRef ref;
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      GlobalContextHolder.setContext(router.navigatorKey.currentContext!);
      ref.read(globalOverlayService);
    });
    return resolver.next();
  }

  void handleContextUsages(StackRouter router) {
    GlobalContextHolder.setContext(router.navigatorKey.currentContext!);
    ref.read(globalOverlayService);
  }
}
