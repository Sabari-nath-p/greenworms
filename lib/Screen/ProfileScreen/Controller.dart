import 'dart:convert';

import 'package:get/get.dart';
import 'package:greenworms/main.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController{
  String name ="";
   getdata()async{
     SharedPreferences pref = await SharedPreferences.getInstance();
     name = pref.getString("data") .toString();
     update();
     Phoneno = pref.getInt("phone")??0;
     mailid = pref.getString("email").toString();
     token = pref.getString('token').toString();
     id = pref.getInt("user_id")??0;
    
  
   }
  int Phoneno = 0;
  String token = "";
  String mailid="";
  int id=0;
  String DataList="";
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getdata();
  }
  void getProfile()async{
    final Response = await get(Uri.parse(baseUrl + "users/$id"),
      headers: {
      'contentType': 'application/json',
      "Authorization" : "Bearer $token" 
    },

    );
  
       if  (Response.statusCode == 200){
      var data = json.decode(Response.body);
      print(data[data]);
      print(Response.body);
       DataList = data["data"];
       update();
    }
    print(DataList);
  
  }}
      
