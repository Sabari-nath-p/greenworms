import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenworms/Screen/enterScreen/enterScreen.dart';
import 'package:greenworms/Screen/stageScreen/controller.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sizer/sizer.dart';

import '../JobAssignedScreen/JobScreen.dart';
import 'controller.dart';

class collectionScreen extends StatelessWidget {
  String id;
  collectionScreen({super.key, required this.id});
  collectionScreenController cctrl = Get.put(collectionScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<collectionScreenController>(builder: (_) {
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
                width: 40.w,
                height: 3.5.h,
                margin: EdgeInsets.only(
                  left: 7.4.w,
                ),
                child: Text(
                  'Photo From Collection Point',
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
                width: 79.47.w,
                height: 5.23.h,
                margin: EdgeInsets.only(
                  left: 7.4.w,
                ),
                child: Text(
                  ' വണ്ടിയിൽ വേസ്റ്റ് കയറ്റിയതിന്റെ ഫോട്ടോ എടുത്തു \n അപ്‌ലോഡ് ചെയ്യുക',
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
                  "2 of 4 ",
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
                    color: Color.fromRGBO(3, 97, 99, 1),
                  ),
                  Container(
                    width: 13.68.w,
                    height: 0.24.h,
                    margin: EdgeInsets.only(
                      left: 4.w,
                    ),
                    color: Colors.grey.withOpacity(.56),
                  ),
                  Container(
                    width: 13.68.w,
                    height: 0.24.h,
                    margin: EdgeInsets.only(
                      left: 4.w,
                    ),
                    color: Colors.grey.withOpacity(.56),
                  ),
                ],
              ),
              SizedBox(height: 4.82.h),
              Container(
                width: 60.w,
                height: 3.h,
                margin: EdgeInsets.only(
                  left: 7.4.w,
                ),
                child: Text(
                  'ഫോട്ടോ അപ്‌ലോഡ് ചെയ്യുക ',
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 10.88.sp,
                      color: Color.fromRGBO(73, 73, 73, 1),
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.01.w),
                ),
              ),
              SizedBox(height: 1.76.h),
              Container(
                  width: 83.68.w,
                  height: 12.82.h,
                  margin: EdgeInsets.only(left: 8.w),
                  child: InkWell(
                      child: Image.asset('assets/image/upload.png'),
                      onTap: () async {
                        if (cctrl.collectimage.length < 4) {
                          final ImagePicker picker = ImagePicker();

                          final data = await picker.pickImage(
                              source: ImageSource.camera);
                          if (data != null) {
                            cctrl.collectimage.add(data);
                          }
                          cctrl.update();
                        } else {
                          Fluttertoast.showToast(
                              msg: "maximum 4 photos are premitted");
                        }
                      })),
              SizedBox(height: 2.6.h),
              Container(
                margin: EdgeInsets.only(left: 7.14.w),
                child: Text(
                  ' കുറഞ്ഞത് 2  ഫോട്ടോ ,പരമാവധി 4 ഫോട്ടോ',
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 10.88.sp,
                      color: Color.fromRGBO(73, 73, 73, 1),
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.01.w),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (XFile data in cctrl.collectimage)
                      InkWell(
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
                                        height: 50.w,
                                        child: Column(
                                          // mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.file(File(data!.path!)),
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
                        child: Container(
                          width: 84.21.w,
                          height: 8.36.h,
                          child: Image.asset('assets/image/imagecard.png'),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 1.94.h),
              Container(
                width: 84.21.w,
                height: 5.17.h,
                margin: EdgeInsets.only(left: 7.36.w),
                child: ElevatedButton(
                  onPressed: () async {
                    if (cctrl.collectimage.length > 2) {
                      cctrl.isLoading = true;
                      cctrl.update();
                      Position pos = await determinePosition();
                      cctrl.pos = pos;

                      cctrl.uploadImage(id);
                    } else {
                      Fluttertoast.showToast(msg: "Please add atleast 2 image");
                    }
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
                    //   shadowColor: Color.fromRGBO(16, 24, 40, 0.05),
                    elevation: 2,
                  ),
                  child: Center(
                    child: (cctrl.isLoading)
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
              SizedBox(
                height: 20,
              ),
            ],
          ),
        );
      }),
    );
  }
}
