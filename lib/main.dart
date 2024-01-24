import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:greenworms/Screen/LoginScreen/LoginScreen.dart';

import 'package:sizer/sizer.dart';

void main(

) {
  runApp(GreenWorms());
}

class GreenWorms extends StatelessWidget {
  const GreenWorms({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, or, fl) {
      return GetMaterialApp(
        home: LoginScreen(),
      );
    });
  }
}
