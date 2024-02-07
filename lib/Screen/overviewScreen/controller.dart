import 'dart:convert';

import 'package:get/get.dart';
import 'package:greenworms/main.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class overviewController extends GetxController {
 
  int? id;
  String? token;
  bool isLoading = false;
  var data = null;
  
  getdata(String jobId) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    id = pref.getInt("user_id") ?? 0;
    token = pref.getString('token').toString();
    print(token);
    update();
   loadContent(jobId);
  }


  loadContent(String jobId) async{

     final Response = await get(Uri.parse(baseUrl+"jobs-tracking?job_id=$jobId"), headers: {
        "Authorization": "Bearer $token"
      },);
    print(jobId);
    print(token);
    print(Response.body);
    print(Response.statusCode);
    if (Response.statusCode == 200){
      data = json.decode(Response.body)["data"];
    }
    update();
  }



  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  //  getdata();

  }

  
}