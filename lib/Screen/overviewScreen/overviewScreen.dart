import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenworms/Screen/overviewScreen/controller.dart';
import 'package:sizer/sizer.dart';

class overviewScreen extends StatelessWidget {
  overviewScreen({super.key});
  overviewController mctrl = Get.put(overviewController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<overviewController>(
        builder: (_) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Container(
                  width: 6.57.w,
                  height: 2.94.h,
                  margin: EdgeInsets.only(
                    top: 8.5.h,
                    left: 5.2.w,
                  ),
                  child: InkWell(child: Image.asset('assets/image/angle.png'),onTap:(){Get.back();},),
                ),
                 SizedBox(height:2.h ,),
                Container(
                  width: 23.42.w,
                  height: 2.94.h,
                  margin: EdgeInsets.only(
                    left: 7.4.w,
                  ),
                  child: Text(
                    'Overview',
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 16.66.sp,
                        color: Color.fromRGBO(73, 73, 73, 1),
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.01.w),
                  ),
                ),
                
                 SizedBox(height:2.h ,),
                 Container(
                  width: 59.47.w,
                  height: 2.35.h,
                  margin: EdgeInsets.only(
                    left: 7.4.w,
                  ),
                  child: Text(
                    'തുടക്കത്തിൽ വണ്ടിയുടെ ഭാരം ',
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 10.88.sp,
                        color: Color.fromRGBO(73, 73, 73, 1),
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.01.w),
                  ),
                ),
                 SizedBox(height:1.5.h),
                Container(
                  width: 84.21.w,
                  height: 6.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 7.14.w),
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.66.w),
                    border: Border.all(color: Color.fromRGBO(208, 213, 221, 1)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0),
                        blurRadius: .50.w,
                        offset: Offset(0, 1),
                      ),
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 255, 255, 1),
                        Color.fromRGBO(255, 255, 255, 1),
                      ],
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "ഭാരം"),
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 11.66.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
                 SizedBox(height:1.9.h),
                  Container(
                  width: 81.47.w,
                  height: 4.h,
                  margin: EdgeInsets.only(
                    left: 7.4.w,
                  ),
                  
                  child: Text(
                    'തൂക്കം അളന്നതിനു ശേഷം ഇവിടെ രേഖപ്പെടുത്തുക',
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 9.18.sp,
                        color: Color.fromRGBO(73, 73, 73, 1),
                        fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                 SizedBox(height:.5.h),
               Container(
                  width: 89.47.w,
                  height: 18.9.h,
                  margin: EdgeInsets.only(left:3.w

                  ),
                  child: Image.asset('assets/image/waste.png'),
                ),
                SizedBox(height:1.5.h),
                Container(
                  width: 75.47.w,
                  height: 2.5.h,
                  margin: EdgeInsets.only(
                    left: 7.4.w,
                  ),
                  
                  child: Text(
                    'വേസ്റ്റ് എടുത്തു ശേഷം വണ്ടിയുടെ ഭാരം ',
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 10.88.sp,
                        color: Color.fromRGBO(52, 64, 84, 1),
                        fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                SizedBox(height:1.5.h),
                Container(
                  width: 84.21.w,
                  height: 6.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 7.14.w),
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.66.w),
                    border: Border.all(color: Color.fromRGBO(208, 213, 221, 1)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0),
                        blurRadius: .50.w,
                        offset: Offset(0, 1),
                      ),
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 255, 255, 1),
                        Color.fromRGBO(255, 255, 255, 1),
                      ],
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "ഭാരം"),
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 11.66.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
                   SizedBox(height:1.5.h),
                Container(
                  width: 83.47.w,
                  height: 2.8.h,
                  margin: EdgeInsets.only(
                    left: 7.4.w,
                  ),
                  
                  child: Text(
                    'തൂക്കം അളന്നതിനു ശേഷം ഇവിടെ രേഖപ്പെടുത്തുക ',
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 9.18.sp,
                        color: Color.fromRGBO(52, 64, 84, 1),
                        fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                   SizedBox(height:.5.h),
               Container(
                  width: 89.47.w,
                  height: 18.9.h,
                  margin: EdgeInsets.only(left:3.w

                  ),
                  child: Image.asset('assets/image/waste.png'),
                ),

                  SizedBox(height:1.5.h),

                   Container(
                  width: 83.47.w,
                  height: 4.4.h,
                  margin: EdgeInsets.only(
                    left: 7.4.w,
                  ),
                  
                  child: Text(
                    'മെറ്റീരിയൽ റിക്കവറി പോയിന്റിൽ ഇറക്കിയതിന്റെ ഫോട്ടോ ',
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 9.18.sp,
                        color: Color.fromRGBO(52, 64, 84, 1),
                        fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                    SizedBox(height: 12.94.h),
                Container(
                  width: 84.21.w,
                  height: 5.17.h,  
                  margin: EdgeInsets.only(left: 7.36.w),
                  child: ElevatedButton(
                    onPressed: () {Get.to(overviewScreen());},
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(3, 97, 99, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.10.w),
                        side: BorderSide(
                          width: 0.50.w,
                          color: Color.fromRGBO(3, 97, 99, 1),
                        ),
                      ),
                      shadowColor: Color.fromRGBO(16, 24, 40, 0.05),
                      elevation: 2,
                    ),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 13.33.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
          
      
  }
      ),
      );
  }
}