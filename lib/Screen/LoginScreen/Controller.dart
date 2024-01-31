import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:greenworms/Screen/Dashboard.dart';
import 'package:greenworms/Screen/homeScreen/homeScreen.dart';
import 'package:greenworms/main.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  TextEditingController emailController =
      TextEditingController(text: "sabari@test.com");
  TextEditingController passwordController =
      TextEditingController(text: "Password123@");

  loginSend() async {
    print(emailController.text);
    print(passwordController.text);
    final Response = await post(Uri.parse(baseUrl + "auth/login"), headers: {
      'contentType': 'application/json',
    }, body: {
      "PhoneOrEmail": emailController.text.trim(),
      "password": passwordController.text.trim()
    });

    var data = json.decode(Response.body);

    if (Response.statusCode == 201) {
      // Obtain shared preferences.
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', data["tokens"]["accessToken"]);
      prefs.setString('user', data['user']['name']);
      prefs.setInt('user_id', data['user']['id']);
      Get.to(() => Dashboard());
    } else {
      Fluttertoast.showToast(
        msg: data["message"],
      );
    }
  }
}
