//import 'package:geolocator/geolocator.dart';
// ignore_for_file: prefer_interpolation_to_compose_strings

import 'dart:convert';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:greenworms/main.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ExpenseScreenController extends GetxController {
  XFile? enterimage;
  int? id;
  var ExpenseList;
  String? token;
  bool isLoading = false;
  @override
  void onInit() {
    super.onInit();
    getdata();
  }

  //TextEditingController enterController = TextEditingController();
  getdata() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    id = pref.getInt("user_id") ?? 0;
    token = pref.getString('token').toString();
    // print(token);
    update();
    fetchExpense();
  }

  fetchExpense() async {
    final Response = await get(
        Uri.parse(baseUrl + "driver-expense?driver_id=$id"),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        });

    print(Response.body);
    print(Response.statusCode);
    if (Response.statusCode == 200) {
      ExpenseList = json.decode(Response.body);
      update();
    }
  }
}
