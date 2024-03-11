import 'package:flutter/material.dart';
import 'package:home_page/screens/home_page.dart';

void main() {
  runApp(const WidgetsBasicosApp());
}

class WidgetsBasicosApp extends StatelessWidget {
  const WidgetsBasicosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets Basicos App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Widgets Basicos App'),
    );
  }
}
