import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:greenworms/main.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  loginSend() async {
    print(emailController.text);
    print(passwordController.text);
    final Response = await post(Uri.parse(baseUrl + "auth/login"), headers: {
      'contentType': 'application/json',
    }, body: {
      "PhoneOrEmail": emailController.text,
      "password": passwordController.text
    });
    print(Response.body);
    print(Response.statusCode);

    if (Response.statusCode == 201) {
    } else {
      Fluttertoast.showToast(msg: "Invalid crentials");
    }
  }
}
