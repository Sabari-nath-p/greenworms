import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:greenworms/Screen/JobAssignedScreen/JobScreen.dart';
import 'package:greenworms/Screen/collectionScreen/collectionScreen.dart';
import 'package:greenworms/Screen/enterScreen/controller.dart';
import 'package:greenworms/Screen/stageScreen/controller.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sizer/sizer.dart';

import '../materialScreen/materialScreen.dart';

class enterScreen extends StatelessWidget {
   String id;
  
   enterScreen({super.key,required this .id});
enterScreenController ectrl = Get.put(enterScreenController());

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<enterScreenController>(
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
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  width: 32.w,
                  height: 3.5.h,
                  margin: EdgeInsets.only(
                    left: 7.4.w,
                  ),
                  child: Text(
                    'Enter Weight',
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 16.66.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.01.w),
                  ),
                ),
                SizedBox(height: 1.5.h),
                Container(
                  width: 98.w,
                  height: 3.h,
                  margin: EdgeInsets.only(
                    left: 7.4.w,
                  ),
                  child: Text(
                    'തൂക്കം അളന്നതിനു ശേഷം ഇവിടെ രേഖപ്പെടുത്തുക',
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 10.00.sp,
                        color: Color.fromRGBO(73, 73, 73, 1),
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.01.w),
                  ),
                ),
                SizedBox(height: 6.82.h),
                Row(
                  children: [
                    Container(
                      width: 13.68.w,
                      height: 0.24.h,
                      margin: EdgeInsets.only(
                        left: 8.68.w,
                      ),
                      color: Color.fromRGBO(3, 97, 99, 1),
                    ),
                    Container(
                      width: 13.68.w,
                      height: 0.24.h,
                      margin: EdgeInsets.only(
                        left: 4.w,
                      ),
                      color: Color.fromRGBO(3, 97, 99, 1),
                    ),
                    Container(
                      width: 13.68.w,
                      height: 0.24.h,
                      margin: EdgeInsets.only(
                        left: 4.w,
                      ),
                      color: Color.fromRGBO(3, 97, 99, 1),
                    ),
                    Container(
                      width: 13.68.w,
                      height: 0.24.h,
                      margin: EdgeInsets.only(
                        left: 4.w,
                      ),
                      color: Color.fromRGBO(3, 97, 99, 1),
                    ),
                  ],
                ),
                SizedBox(height: 3.h),
                Container(
                  width: 23.68.w,
                  height: 3.h,
                  margin: EdgeInsets.only(
                    left: 7.4.w,
                  ),
                  child: Text(
                    ' Enter Weight',
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 11.66.sp,
                        color: Color.fromRGBO(52, 64, 84, 1),
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.01.w),
                  ),
                ),
                SizedBox(height: 2.h),
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
                        border: InputBorder.none, hintText: "Enter weight"),
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 11.66.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 3.h),
                Container(
                  width: 55.52.w,
                  height: 3.h,
                  margin: EdgeInsets.only(
                    left: 7.14.w,
                  ),
                  child: Text(
                    ' ഫോട്ടോ അപ്‌ലോഡ് ചെയ്യുക ',
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 10.88.sp,
                        color: Color.fromRGBO(73, 73, 73, 1),
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.01.w),
                  ),
                ),
                SizedBox(height: 2.h),
                Container(
                  width: 83.68.w,
                  height: 12.82.h,
                  margin: EdgeInsets.only(left: 5.5.w),
                  child: InkWell(
                      child: Image.asset('assets/image/upload.png'),
                      onTap: () async {
                        final ImagePicker picker = ImagePicker();
                        print("hello");
          
                         ectrl.enterimage =
                            await picker.pickImage(source: ImageSource.camera);
                            ectrl.update();
                      })
                ),SizedBox(height:1.2.h),
                if(ectrl.enterimage!=null)
                Container(
                  width: 84.21.w,
                  height: 12.36.h,
                  margin: EdgeInsets.only(
                    
                    left: 7.14.w,
                  ),
                  child: Image.asset('assets/image/imagecard.png'),
                ),
                SizedBox(height: 12.5.h),
                Container(
                  width: 80.21.w,
                  height: 5.17.h,
                  margin: EdgeInsets.only(left: 7.36.w),
                  child: ElevatedButton(
                    onPressed: () async {
                      ectrl.isLoading = true;
                    ectrl.update();
                    Position pos = await determinePosition();
                    ectrl.pos = pos;
                   
                    ectrl.uploadImage(id);
                    },
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
                       child: (ectrl.isLoading)
                        ? LoadingAnimationWidget.staggeredDotsWave(
                            color: Colors.white, size: 24)
                        :  Text(
                        'Save & Next',
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
