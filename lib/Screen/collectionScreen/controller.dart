import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:greenworms/Screen/homeScreen/controller.dart';
import 'package:greenworms/main.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class collectionScreenController extends GetxController {
  XFile? collectimage;
  int? id;
  String? token;
  bool isLoading = false;
  Position? pos;
  TextEditingController collectionController = TextEditingController();
  getdata() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    id = pref.getInt("user_id") ?? 0;
    token = pref.getString('token').toString();
    print(token);
    update();
  }

  uploadImage(String jobId) async {
    isLoading = true;
    print("image_01");
    update();
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };

    var request = http.MultipartRequest(
        'POST', Uri.parse(baseUrl + 'image-upload/upload-multiple'));

    request.files
        .add(await http.MultipartFile.fromPath('files', collectimage!.path!));
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    print("image_02");
    if (response.statusCode == 200 || response.statusCode == 201) {
      String temp = await response.stream.bytesToString();
      var data = json.decode(temp);
      List tempImage = [];
      for (var data in data["data"]) {
        tempImage.add(data["key"]);
      }
      uploadData(tempImage, jobId);
    } else {
      print(response.statusCode);
      print(response.stream.bytesToString());
      print("image_03");
    }
  }

  uploadData(List image, String jobId) async {
    print("image_04");
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };
    final Response =
        await http.post(Uri.parse(baseUrl + "jobs/$jobId/record-tracking"),
            headers: headers,
            body: json.encode({
              "stage": "stage_2",
              "photos": image,
              "location_lattitude": pos!.latitude.toString(),
              "location_longitude": pos!.longitude.toString(),
              
            }));
    print("image_05");
    print(Response.body);
    print(Response.statusCode);
    if (Response.statusCode == 201 || Response.statusCode == 200) {
      isLoading = false;
      update();
      homeController hctrl = Get.put(homeController());
      hctrl.getjoblist();
      Get.back();
    } else {
      isLoading = false;
      Fluttertoast.showToast(msg:json.decode(Response.body)["message"]);
      update();
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getdata();
  }
}
