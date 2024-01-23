import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:greenworms/Screen/homeScreen/homeScreen.dart';

void main() {}

class GreenWorms extends StatelessWidget {
  const GreenWorms({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: homeScreen(),
    );
  }
}
