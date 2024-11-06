import 'package:flutter/material.dart';
import 'package:trogon_media_machine_test/feature/home/view/pages/product_details_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Machine Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),
        ),
      ),
      home: const ProductDetailsPage(),
    );
  }
}
