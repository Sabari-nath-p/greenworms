import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:greenworms/Screen/enterScreen/enterScreen.dart';
import 'package:greenworms/Screen/stageScreen/controller.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

import '../JobAssignedScreen/JobScreen.dart';
import 'controller.dart';


class collectionScreen extends StatelessWidget {
  String id ;
   collectionScreen({super.key,required this .id});
collectionScreenController cctrl = Get.put(collectionScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<collectionScreenController>(
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
                  width: 40.w,
                  height: 3.5.h,
                  margin: EdgeInsets.only(
                    left: 7.4.w,
                  ),
                  child: Text(
                    'Collection Point',
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
                    ' വണ്ടിയിൽ വേസ്റ്റ് കയറ്റിയതിന്റെ ഫോട്ടോ എടുത്തുഅപ്‌ലോഡ് ചെയ്യുക ',
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 10.88.sp,
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
                SizedBox(height: 4.82.h),
               
                
                Container(
                  width: 55.52.w,
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
                  margin: EdgeInsets.only(left: 7..w),
                  child: InkWell(
                      child: Image.asset('assets/image/upload.png'),
                      onTap: () async {
                        final ImagePicker picker = ImagePicker();
                        
          
                         
                        
                         cctrl.collectimage =
                            await picker.pickImage(source: ImageSource.camera);
                            cctrl.update();
                      })
                ),SizedBox(height:2.6.h),
                if(cctrl.collectimage!=null)
                Container(
                  width: 84.21.w,
                  height: 12.36.h,
                  margin: EdgeInsets.only(
                    
                    left: 5.2.w,
                  ),
                  child: Image.asset('assets/image/imagecard.png'),
                ),
                SizedBox(height: 20.94.h),
                Container(
                  width: 84.21.w,
                  height: 5.17.h,
                  margin: EdgeInsets.only(left: 7.36.w),
                  child: ElevatedButton(
                    onPressed: ()  async {
                      cctrl.isLoading = true;
                    cctrl.update();
                    Position pos = await determinePosition();
                    cctrl.pos = pos;
                   
                    
                    cctrl.uploadImage(id);
                    },
                     
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(3, 97, 99, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.10.w),
                        side: BorderSide(
                          width: 0.50.w,
                          color: Color.fromRGBO(127, 86, 217, 1),
                        ),
                      ),
                      shadowColor: Color.fromRGBO(16, 24, 40, 0.05),
                      elevation: 2,
                    ),
                    child: Center(
                      child: Text(
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

 
