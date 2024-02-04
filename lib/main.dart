import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:greenworms/Screen/Dashboard.dart';
import 'package:greenworms/Screen/LoginScreen/LoginScreen.dart';
import 'package:greenworms/Screen/homeScreen/homeScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:sizer/sizer.dart';

String baseUrl = "https://api.greenworms.alpha.logidots.com/api/";
String login = "";
void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  login = preferences.getString("LOGIN") ?? "";
  runApp(GreenWorms());
}

class GreenWorms extends StatelessWidget {
  const GreenWorms({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, or, fl) {
      return GetMaterialApp(
        home: (login == "IN") ? Dashboard() : LoginScreen(),
      );
    });
  }
}
