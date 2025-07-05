import 'package:flutter/material.dart';

void main() {
  runApp(const MapMinder());
}

class MapMinder extends StatelessWidget {
  const MapMinder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      // home: add mapminder home page
    );
  }
}
