import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenworms/Screen/overviewScreen/controller.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sizer/sizer.dart';

class overviewScreen extends StatelessWidget {
  String jobid;
  overviewScreen({super.key, required this.jobid});
  overviewController mctrl = Get.put(overviewController());
  @override
  Widget build(BuildContext context) {
    mctrl.getdata(jobid);
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<overviewController>(builder: (_) {
          return (mctrl.data == null)
              ? Center(
                  child: LoadingAnimationWidget.staggeredDotsWave(
                      color: Colors.orange, size: 40),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 6.57.w,
                      height: 2.94.h,
                      margin: EdgeInsets.only(
                        top: 2.h,
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
                      width: 40.42.w,
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
                    SizedBox(
                      height: 2.h,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 80.47.w,
                              height: 2.35.h,
                              margin: EdgeInsets.only(
                                left: 7.4.w,
                              ),
                              child: Text(
                                'കാലി തൂക്കം ',
                                style: TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 10.88.sp,
                                    color: Color.fromRGBO(73, 73, 73, 1),
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: -0.01.w),
                              ),
                            ),
                            SizedBox(height: 1.5.h),
                            if (mctrl.data.length > 2)
                              Container(
                                width: 84.21.w,
                                height: 6.h,
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 7.14.w),
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.66.w),
                                  border: Border.all(
                                      color: Color.fromRGBO(208, 213, 221, 1)),
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
                                child: Text(
                                  mctrl.data[2]["weight"].toString(),
                                  style: TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 11.66.sp,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            // SizedBox(height:1.9.h),
                            //Container(
                            //width: 90.47.w,
                            //height: 4.h,
                            //margin: EdgeInsets.only(
                            //left: 7.4.w,
                            //),

                            //child: Text(
                            //'തൂക്കം അളന്നതിനു ശേഷം ഇവിടെ രേഖപ്പെടുത്തുക',
                            //style: TextStyle(
                            //fontFamily: 'Lexend',
                            //fontSize: 9.18.sp,
                            //color: Color.fromRGBO(73, 73, 73, 1),
                            //fontWeight: FontWeight.w500,
                            //     ),
                            // ),
                            //),
                            // SizedBox(height:.02.h),
                            if (mctrl.data.length > 3) SizedBox(height: 1.5.h),
                            if (mctrl.data.length > 3)
                              for (var data in mctrl.data[2]["images"])
                                Container(
                                  width: 89.47.w,
                                  height: 18.9.h,
                                  margin: EdgeInsets.only(left: 3.w,top: 1.h),
                                  child: Image.network(data["imgUrl"]),
                                ),
                            SizedBox(height: 1.5.h),
                            Container(
                              width: 100.w,
                              // height: 2.5.h,
                              margin: EdgeInsets.only(
                                left: 7.4.w,
                              ),

                              child: Text(
                                'വണ്ടിയിൽ വേസ്റ്റ് കയറ്റിയതിന്റെ ഫോട്ടോ ',
                                style: TextStyle(
                                  fontFamily: 'Lexend',
                                  fontSize: 9.88.sp,
                                  color: Color.fromRGBO(52, 64, 84, 1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                            // SizedBox(height:.5.h),

                            if (mctrl.data.length >=4 )
                              for (var data in mctrl.data[3]["images"])
                                Container(
                                  width: 89.47.w,
                                  height: 18.9.h,
                                  margin: EdgeInsets.only(left: 3.w,top: 1.h),
                                  child: Image.network(data["imgUrl"]),
                                ),

                            SizedBox(height: 1.5.h),
                            Container(
                              width: 90.47.w,
                              height: 2.8.h,
                              margin: EdgeInsets.only(
                                left: 7.4.w,
                              ),
                              child: Text(
                                'വേസ്റ്റ് എടുത്തു ശേഷം വണ്ടിയുടെ ഭാരം  ',
                                style: TextStyle(
                                  fontFamily: 'Lexend',
                                  fontSize: 9.18.sp,
                                  color: Color.fromRGBO(52, 64, 84, 1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            //SizedBox(height:.5.h),
                            if (mctrl.data.length > 5)
                              Container(
                                width: 84.21.w,
                                height: 6.h,
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 7.14.w),
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.66.w),
                                  border: Border.all(
                                      color: Color.fromRGBO(208, 213, 221, 1)),
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
                                child: Text(
                                  mctrl.data[4]["weight"].toString(),
                                  style: TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 11.66.sp,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(height: 1.h,),
                              Container(
                              width: 90.47.w,
                              height: 2.8.h,
                              margin: EdgeInsets.only(
                                left: 7.4.w,
                              ),
                              child: Text(
                                'തൂക്കഷീറ്റ് ഫോട്ടോ   ',
                                style: TextStyle(
                                  fontFamily: 'Lexend',
                                  fontSize: 9.18.sp,
                                  color: Color.fromRGBO(52, 64, 84, 1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(height: 2.3.h),
                            if (mctrl.data.length > 5)
                              for (var data in mctrl.data[4]["images"])
                                Container(
                                  width: 89.47.w,
                                  height: 18.9.h,
                                  margin: EdgeInsets.only(left: 3.w,top: 1.h),
                                  child: Image.network(data["imgUrl"]),
                                ),

                            SizedBox(height: 4.h),

                            Container(
                              width: 90.w,
                              height: 4.4.h,
                              margin: EdgeInsets.only(
                                left: 7.4.w,
                              ),
                              child: Text(
                                'മെറ്റീരിയൽ MRF എത്തിയതിന്റെ ഫോട്ടോ  ',
                                style: TextStyle(
                                  fontFamily: 'Lexend',
                                  fontSize: 9.18.sp,
                                  color: Color.fromRGBO(52, 64, 84, 1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(height: 1.8.h),
                            if (mctrl.data.length > 6)
                              for (var data in mctrl.data[5]["images"])
                                Container(
                                  width: 89.47.w,
                                  height: 18.9.h,
                                  margin: EdgeInsets.only(left: 3.w,top: 1.h),
                                  child: Image.network(data["imgUrl"]),
                                ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: 84.21.w,
                        height: 5.17.h,
                        margin: EdgeInsets.only(left: 7.36.w),
                        child: ElevatedButton(
                          onPressed: () {
                            Get.back();
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
                            child: Text(
                              'Return',
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
                    ),
                    SizedBox(height: 2.94.h),
                  ],
                );
        }),
      ),
    );
  }
}
