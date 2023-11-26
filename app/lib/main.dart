import 'package:flutter/material.dart';
import 'package:ipbjp_mobile/src/views/main_screen.dart';
import 'package:ipbjp_mobile/provider.dart';

void main() {
  setupGetIt();
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF165131),
        brightness: Brightness.light,
      ),
      // Define the default brightness and colors.
    ),
    home: const MainScreen(),
  ));
}
