import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

export '_app_colors.dart';
export '_app_theme.dart';

class AppThemeNotifier extends ChangeNotifier {
  AppThemeNotifier._();
  static AppThemeNotifier? _instance;
  factory AppThemeNotifier.init() {
    _instance ??= AppThemeNotifier._();
    _instance!._getSavedTheme();
    return _instance!;
  }

  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;
  bool get isDarkTheme => _themeMode == ThemeMode.dark;
  void toggleTheme(bool value) {
    _themeMode = value ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  late SharedPreferences prefs;
  Future<void> _getSavedTheme() async {
    prefs = await SharedPreferences.getInstance();
    _themeMode = ThemeMode.values.byName(
      prefs.getString('theme_mode') ?? 'system',
    );
    notifyListeners();
  }
}

final appThemeProvider = ChangeNotifierProvider(
  (ref) => AppThemeNotifier.init(),
);
