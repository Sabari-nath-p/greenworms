import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenworms/Screen/homeScreen/controller.dart';
import 'package:sizer/sizer.dart';

class HMTitle extends StatelessWidget {
   HMTitle({super.key});
   homeController homeCtrl = Get.put(homeController());
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start, 
      crossAxisAlignment: CrossAxisAlignment.center, 
      children: [
        ClipOval(
          child: Image.asset(
            'assets/image/profile.png',
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 2.36.w),
      Text(
              'Hello ' ,
              style: GoogleFonts.lexend(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(255, 255, 255, 1),
                letterSpacing: 0,
                

              ),
            ),
            Text(
              homeCtrl.name,
              style: GoogleFonts.lexend(
                fontSize: 18.33.sp,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(255, 255, 255, 1),
                letterSpacing: 0,
                
              ),
            ),
        Text(
          ',',
          style: GoogleFonts.ubuntu(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(255, 255, 255, 1),
            letterSpacing: 0,
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            width: 20,
            height: 20,
            child: Image.asset(
              'assets/image/bell.png',
              width: 20,
              height: 20,
            ),
          ),
        ),
      ],
    );
  }
}