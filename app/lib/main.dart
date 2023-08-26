import 'package:flutter/material.dart';
import 'package:ipbjp_mobile/src/views/main_screen.dart';
import 'package:ipbjp_mobile/provider.dart';

void main() {
  setupGetIt();
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    ),
    home: const MainScreen(),
  ));
}
