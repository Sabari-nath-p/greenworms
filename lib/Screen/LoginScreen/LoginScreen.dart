import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:greenworms/Screen/homeScreen/homeScreen.dart';
import 'package:sizer/sizer.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body:Column(
        children: [
         // Container(
         //   width: MediaQuery.of(context).size.width,
         //   height: 35.6.h,
         //   alignment: Alignment.bottomCenter,
        //    child:Image.asset("assets/images/logo.png") ,
           
       //   ),
          Center(
        child: InkWell(
          onTap: () {
            Get.to(() => homeScreen(), transition: Transition.rightToLeft);
          },
          child: Container(
            width: 100,
            height: 100,
            color: Colors.orange,
          ),
        ),
      ),
        ],
      )
      
    ));
  }
}
