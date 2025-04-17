import 'package:flutter/material.dart';
import 'package:my_portfolio/routes.dart';
import 'package:my_portfolio/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: EAppTheme.lightTheme,
      darkTheme: EAppTheme.darktheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      title: 'Immanuel Antony Jeyam',
      routerConfig: AppRoutes.createRouter(),
    );
  }
}
