import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:greenworms/Screen/JobAssignedScreen/Component/StatusBar.dart';


import 'package:greenworms/Screen/enterScreen/enterScreen.dart';
import 'package:greenworms/Screen/homeScreen/components/JobSheetCard.dart';
import 'package:greenworms/Screen/homeScreen/controller.dart';
import 'package:greenworms/Screen/materialScreen/materialScreen.dart';
import 'package:greenworms/Screen/stageScreen/weightScreen.dart';
import 'package:sizer/sizer.dart';

import '../collectionScreen/collectionScreen.dart';

class JobScreen extends StatefulWidget {
  String id;
  JobScreen({super.key,required this .id});

  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
  homeController jctrl = Get.put(homeController());
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: GetBuilder<homeController>(builder: (_) {
        return SingleChildScrollView(
          child: Column(
            children: [
              StatusBar(),
              SizedBox(
                height: 2.8.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.w),
                child: SizedBox(
                  width: 92.05.w,
                  height: 5.8.h,
                  child: TextFormField(
                    controller: searchController,
                    onChanged: (value) {
                      setState(() {});
                    },
                    keyboardType: TextInputType.emailAddress,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 5.6.w,
                        color: Color(0xff036163),
                      ),
                      isDense: true,
                      isCollapsed: true,
                      hintText: ("Search by Job Id"),
                      hintStyle: GoogleFonts.lexend(
                        color: Color(0xff036163),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.9.h),
                        borderSide:
                            BorderSide(color: Color(0xffD0D5DD), width: 0.15.h),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.5.h),
              for (var data in jctrl.joblist)
                if (jctrl.jStatus == 0 &&
                    data["status"]["name"] == "initiated" &&
                    data["id"].toString().contains(searchController.text))
                  JobSheetCard(
                    JobStatus: 0,
                    jobData: data,
                  )
                else if (jctrl.jStatus == 1 &&
                    (data["status"]["name"] == "accepted"||data["status"]["name"]== "in_progress") &&
                    data["id"].toString().contains(searchController.text))
                  InkWell(
                    onTap: () async { 
                      if (data["TrackingStatus"] == null)
                      {
                        Get.to(()=>   weightScreen());
                      }
                      else if
                      (
                        data["TrackingStatus"] == "stage_1" )
                      {

                      Get.to(()=> collectionScreen());
                      }
                      else if
                      (
                        data["TrackingStatus"] == "stage_2" )
                      {

                      Get.to(()=> enterScreen()),
                      }
                      else if
                      (data["TrackingStatus"] == "stage_3" )
                      {

                      Get.to(()=> MaterialScreen())
                      }
                      


                      
                          
                    },
                    child: JobSheetCard(
                      JobStatus: 1,
                      jobData: data,
                    ),
                  )
                else if (jctrl.jStatus == 2 &&
                    data["status"]["name"] == "completed" &&
                    data["id"].toString().contains(searchController.text))
                  JobSheetCard(
                    JobStatus: 2,
                    jobData: data,
                  )
            ],
          ),
        );
      }),
    ));
  }
}

Future<Position> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}
