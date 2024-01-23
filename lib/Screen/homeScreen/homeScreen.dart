import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:greenworms/Screen/homeScreen/components/HPrimaryCard.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [InkWell(onTap: () {}, child: HPrimaryCard())],
      ),
    ));
  }
}
