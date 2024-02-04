import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:greenworms/main.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homeController extends GetxController {
  int jStatus = 0;
  String name = "";
  bool isLoading = false;
  TextEditingController reasonController = TextEditingController();
  getdata() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    name = pref.getString("user").toString();
    update();
    id = pref.getInt("user_id") ?? 0;
    token = pref.getString('token').toString();
    getjoblist();
  }

  int id = 0;
  String token = "";
  List joblist = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getdata();
  }

  void getjoblist() async {
    final Response = await get(
      Uri.parse(baseUrl + "jobs/$id/list-jobs"),
      headers: {
        'contentType': 'application/json',
        "Authorization": "Bearer $token"
      },
    );
    if (Response.statusCode == 200) {
      var data = json.decode(Response.body);
      print(data[data]);
      print(Response.body);
      joblist = data["data"];
      update();
    }
    print(joblist);
  }

  changeJobStatus(int jobId) async {
    isLoading = true;
    update();
    final Response = await post(
        Uri.parse(baseUrl + "jobs/$jobId/change-job-status"),
        headers: {
          'contentType': 'application/json',
          "Authorization": "Bearer $token"
        },
        body: {
          "status": "accepted"
        });
    print(Response.body);
    print(Response.statusCode);
    if (Response.statusCode == 201) {
      Fluttertoast.showToast(msg: "Job accepted sucessfully");
      isLoading = false;
      getjoblist();
      update();
    } else {
      Fluttertoast.showToast(msg: json.decode(Response.body)["message"]);
      isLoading = false;
      update();
    }
  }

  changeJobStatusReject(int jobId, BuildContext context) async {
    isLoading = true;
    update();
    final Response = await post(
        Uri.parse(baseUrl + "jobs/$jobId/change-job-status"),
        headers: {
          'contentType': 'application/json',
          "Authorization": "Bearer $token"
        },
        body: {
          "status": "rejected",
          "note": reasonController.text.trim().toString()
        });
    print(Response.body);
    print(Response.statusCode);
    if (Response.statusCode == 201) {
      Fluttertoast.showToast(msg: "Job rejected sucessfully");
      isLoading = false;
      Navigator.of(context).pop();
      getjoblist();
      update();
    } else {
      Fluttertoast.showToast(msg: json.decode(Response.body)["message"]);
      isLoading = false;
      update();
    }
  }
}
