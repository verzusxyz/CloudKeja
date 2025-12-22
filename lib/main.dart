import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/core/theme/theme.dart';
import 'app/routes/app_routes.dart';
import 'app/services/services.dart'
    show
        HTTPDioClient,
        httpDioClientProvider,
        AppLocaleNotifier,
        appLocaleProvider,
        CurrencyRebuilderMixin;
import 'package:cloudkeja/i18n/strings.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final httpClient = HTTPDioClient.initClient(prefs: prefs);
  final appLocaleNew = AppLocaleNotifier(prefs);

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    TranslationProvider(
      child: ProviderScope(
        overrides: [
          httpDioClientProvider.overrideWithValue(httpClient),
          appLocaleProvider.overrideWithValue(appLocaleNew),
        ],
        child: const AcnooApp(),
      ),
    ),
  );
}

class AcnooApp extends ConsumerStatefulWidget {
  const AcnooApp({super.key});

  @override
  ConsumerState<AcnooApp> createState() => _AcnooAppState();
}

class _AcnooAppState extends ConsumerState<AcnooApp>
    with CurrencyRebuilderMixin {
  late final AppRoutes router;
  @override
  void initState() {
    super.initState();
    router = AppRoutes(ref);
  }

  @override
  Widget build(BuildContext context) {
    final appThemeProv = ref.watch(appThemeProvider);

    return DSizeUtils.init(
      context,
      builder: (_) {
        return MaterialApp.router(
          themeMode: appThemeProv.themeMode,
          theme: DAppTheme.kLightTheme,

          // darkTheme: DAppTheme.kDarkTheme,
          routerConfig: router.config(),

          // Locale
          locale: TranslationProvider.of(context).flutterLocale,
          supportedLocales: AppLocaleUtils.supportedLocales,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
        );
      },
    );
  }
}
