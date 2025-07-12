import 'package:flutter/material.dart';
import 'package:mapminder_mobile/features/map/screen/map_screen.dart';

void main() {
  runApp(const MapMinder());
}

class MapMinder extends StatelessWidget {
  const MapMinder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MapMinder',
      theme: ThemeData(),
      // TODO: this should be decided with environment variables
      // eg: if production the debugShowCheckedModeBanner should be false else true
      debugShowCheckedModeBanner: false,
      home: MapScreen(),
    );
  }
}
