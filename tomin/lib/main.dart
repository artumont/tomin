import 'package:flutter/material.dart';
import 'package:tomin/presentation/screens/settings.dart';
import 'package:tomin/core/themes/default.dart';
import 'package:tomin/core/themes/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const Tomin(),
    ),
  );
}

class Tomin extends StatelessWidget {
  const Tomin({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'Tomin',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.themeMode,
      home: const SettingsScreen(),
    );
  }
}
