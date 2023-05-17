import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:orange_landing_page/home/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: DsTheme.light,
      home: const HomePage(),
    );
  }
}
