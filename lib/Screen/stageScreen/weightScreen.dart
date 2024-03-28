import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenworms/Screen/JobAssignedScreen/JobScreen.dart';
import 'package:greenworms/Screen/collectionScreen/collectionScreen.dart';
import 'package:greenworms/Screen/stageScreen/controller.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sizer/sizer.dart';

class weightScreen extends StatelessWidget {
  String id;
  weightScreen({super.key, required this.id});
  stageController sctrl = Get.put(stageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<stageController>(builder: (_) {
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
                child: InkWell(
                  child: Image.asset('assets/image/angle.png'),
                  onTap: () {
                    Get.back();
                  },
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                width: 49.w,
                height: 3.5.h,
                margin: EdgeInsets.only(
                  left: 7.4.w,
                ),
                child: Text(
                  'Enter Net Weight',
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
                width: 81.31.w,
                height: 5.5.h,
                margin: EdgeInsets.only(
                  left: 7.4.w,
                ),
                child: Text(
                  "കാലി തൂക്കം അളന്നതിനു ശേഷം ഇവിടെ \n രേഖപ്പെടുത്തുക ",
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 10.88.sp,
                      color: Color.fromRGBO(73, 73, 73, 1),
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.01.w),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 7.5.w),
                height: 6.82.h,
                child: Text(
                  "1 of 4 ",
                  style: GoogleFonts.lexend(
                      fontSize: 11.33.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
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
                    color: Colors.grey.withOpacity(.7),
                  ),
                  Container(
                    width: 13.68.w,
                    height: 0.24.h,
                    margin: EdgeInsets.only(
                      left: 4.w,
                    ),
                    color: Colors.grey.withOpacity(.7),
                  ),
                  Container(
                    width: 13.68.w,
                    height: 0.24.h,
                    margin: EdgeInsets.only(
                      left: 4.w,
                    ),
                    color: Colors.grey.withOpacity(.7),
                  ),
                ],
              ),
              SizedBox(height: 3.h),
              Container(
                width: 40.68.w,
                height: 2.35.h,
                margin: EdgeInsets.only(
                  left: 7.4.w,
                ),
                child: Text(
                  ' Tare Weight',
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 11.66.sp,
                      color: Color.fromRGBO(52, 64, 84, 1),
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.01.w),
                ),
              ),
              SizedBox(height: 1.h),
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
                  controller: sctrl.weigthController,
                  keyboardType: TextInputType.number,
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
                width: 60.52.w,
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
              SizedBox(height: 1.2.h),
              Container(
                  width: 83.68.w,
                  height: 12.82.h,
                  margin: EdgeInsets.only(left: 7.8.w),
                  child: InkWell(
                      child: Image.asset('assets/image/upload.png'),
                      onTap: () async {
                        final ImagePicker picker = ImagePicker();
          
                        sctrl.weightimage =
                            await picker.pickImage(source: ImageSource.camera);
                        sctrl.update();
                      })),
              SizedBox(height: 2.5.h),
              Container(
                margin: EdgeInsets.only(left: 7.w),
                child: Text(
                  ' പരമാവധി 1 ഫോട്ടോ',
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 10.88.sp,
                      color: Color.fromRGBO(73, 73, 73, 1),
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.01.w),
                ),
              ),
              // SizedBox(height: 1.2.h),
              if (sctrl.weightimage != null)
                Container(
                  width: 84.21.w,
                  height: 12.36.h,
                  margin: EdgeInsets.only(
                    left: 7.14.w,
                  ),
                  child: InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (ctx) => Container(
                                  //   alignment: Alignment.center,
          
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 4.2.w),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: Container(
                                      width: 90.w,
                                      child: Column(
                                        // mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.file(
                                              File(sctrl.weightimage!.path!)),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Get.back();
                                            },
                                            child: Container(
                                                width: 33.9.w,
                                                height: 4.15.h,
                                                alignment: Alignment.center,
                                                child: Text("Back",
                                                    style: GoogleFonts.lexend(
                                                        fontSize: 11.sp,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white)),
                                                decoration: BoxDecoration(
                                                    color: Color(0xff036163),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.9.h))),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ));
                      },
                      child: Image.asset('assets/image/imagecard.png')),
                ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                width: 80.21.w,
                height: 5.17.h,
                margin: EdgeInsets.only(left: 7.36.w),
                child: ElevatedButton(
                  onPressed: () async {
                    if (sctrl.weightimage != null &&
                        sctrl.weigthController.text.isNotEmpty) {
                      sctrl.isLoading = true;
                      sctrl.update();
                      Position pos = await determinePosition();
                      sctrl.pos = pos;
                      sctrl.uploadImage(id);
                    } else {
                      Fluttertoast.showToast(msg: "Please input data");
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(3, 97, 99, 1),
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
                    child: (sctrl.isLoading)
                        ? LoadingAnimationWidget.staggeredDotsWave(
                            color: Colors.white, size: 24)
                        : Text(
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
      }),
    );
  }
}
