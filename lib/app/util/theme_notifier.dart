import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/app/util/storage_manager.dart';

import '../core/constants/theme_constants.dart';

enum ThemeMode { dark, light }

class ThemeNotifier with ChangeNotifier {
  static const String themeMode_key = 'theme_mode';

  final darkTheme = AppTheme.instance.themeDark;
  final lightTheme = AppTheme.instance.themeLight;

  ThemeData? _themeData;
  ThemeData? getTheme() => _themeData;

  void setTheme(ThemeMode mode) async {
    switch (mode) {
      case ThemeMode.dark:
        _themeData = darkTheme;
        break;
      case ThemeMode.light:
        _themeData = lightTheme;
        break;
    }
    StorageManager.saveData(themeMode_key, mode.index);
    notifyListeners();
  }

  // void setDarkMode() async {
  //   _themeData = darkTheme;
  //   StorageManager.saveData(themeMode_key, ThemeMode.dark.name);
  //   notifyListeners();
  // }

  // void setLightMode() async {
  //   _themeData = lightTheme;
  //   StorageManager.saveData(themeMode_key, ThemeMode.light.name);
  //   notifyListeners();
  // }

  ThemeNotifier() {
    StorageManager.readData(themeMode_key).then((value) {
      if (value != null) {
        final mode = ThemeMode.values[value];
        setTheme(mode);
      } else {
        setTheme(ThemeMode.light);
      }
    });
    _themeData = lightTheme;
  }
}
