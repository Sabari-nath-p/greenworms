import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:greenworms/Screen/homeScreen/homeScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Get.to(() => homeScreen(), transition: Transition.rightToLeft);
          },
          child: Container(
            width: 100,
            height: 100,
            color: Colors.orange,
          ),
        ),
      ),
    ));
  }
}
