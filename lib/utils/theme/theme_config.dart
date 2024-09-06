import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


// Create ChangeNotifierProvider for ThemeNotifier
final themeProvider = ChangeNotifierProvider<ThemeNotifier>((ref) {
  return ThemeNotifier();
});


class ThemeNotifier extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  // Toggles between light and dark theme
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();  // Notify listeners that theme has changed
  }
}
