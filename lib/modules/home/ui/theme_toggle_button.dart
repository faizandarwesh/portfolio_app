import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/theme/theme_config.dart';

class ThemeToggleButton extends ConsumerWidget {
  const ThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    // Watch the theme provider to get the current theme state
    final themeNotifier = ref.watch(themeProvider);

    return IconButton(
      icon: Icon(
        themeNotifier.isDarkMode ? Icons.dark_mode : Icons.wb_sunny,
        color: Colors.white,
        size: 30,
      ),
      onPressed: () {
        themeNotifier.toggleTheme();
      },
    );
  }
}
