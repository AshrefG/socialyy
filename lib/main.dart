import 'package:flutter/material.dart';
import 'package:socialyy/pages/root_app.dart';
import 'package:socialyy/utils/constants.dart';

void main() => runApp((MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Constants.darkTheme,
      home: RootApp(),
    );
  }
}
