import 'dart:convert';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:greenworms/main.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homeController extends GetxController {

  String name = "";
  getdata()async{
     SharedPreferences pref = await SharedPreferences.getInstance();
     name = pref.getString("user") .toString();
     update();
     id = pref.getInt("user_id")??0;
     token = pref.getString('token').toString();
     getjoblist(

     );
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
  void getjoblist()async{
    final Response = await get(Uri.parse(baseUrl + "jobs/$id/list-jobs"),
    
    
    headers: {
      'contentType': 'application/json',
      "Authorization" : "Bearer $token" 
    },

    );
    if  (Response.statusCode == 200){
      var data = json.decode(Response.body);
      print(data[data]);
      print(Response.body);
       joblist = data["data"];
       update();
    }
    print(joblist);
  }

  
}
