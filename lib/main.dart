import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_app/utils/theme/theme_config.dart';
import 'modules/home/ui/home_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the themeProvider to listen to theme changes
    final themeNotifier = ref.watch(themeProvider);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeNotifier.isDarkMode
          ? ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
        scaffoldBackgroundColor: Colors.black,
            )
          : ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
            ),
      home: const HomeScreen(),
    );
  }
}
