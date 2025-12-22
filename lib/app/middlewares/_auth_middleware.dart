import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app/data/repositories/repositories.dart'
    show userRepositoryProvider;
import '../core/static/static.dart';
import '../routes/app_routes.gr.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard(this.widgetRef);
  final WidgetRef widgetRef;

  @override
  Future<void> onNavigation(resolver, router) async {
    final _prefs = await SharedPreferences.getInstance();

    final _hasLanguage = _prefs.getString(DAppSPrefsKeys.savedLanguage) != null;
    final _firstTour = _prefs.getBool(DAppSPrefsKeys.firstTour) ?? true;

    if (!_hasLanguage) {
      resolver.redirect(LanguageRoute(), replace: true);
      return;
    }
    if (_firstTour) {
      resolver.redirect(const OnboardRoute(), replace: true);
      return;
    }

    final userState = await widgetRef.watch(
      userRepositoryProvider.future,
    );

    if (userState == null) {
      resolver.redirect(const SignInRoute(), replace: true);
      return;
    } else {
      if (userState.isSetupped == 0) {
        resolver.redirect(
          userState.role == 'landlord'
              ? const LandlordSetupProfileRoute()
              : const TenantSetupProfileRoute(),
          replace: true,
        );
        return;
      }
    }

    if (userState.role == 'landlord') {
      resolver.redirect(const LandlordBottomNavRoute(), replace: true);
    } else if (userState.role == 'tenant') {
      resolver.redirect(const TenantBottomNavRoute(), replace: true);
    } else {
      resolver.redirect(SignInRoute(), replace: true);
    }
    return;
  }
}
