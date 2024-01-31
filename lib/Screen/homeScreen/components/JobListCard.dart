import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenworms/Screen/homeScreen/components/JobSheetCard.dart';
import 'package:greenworms/Screen/stageScreen/weightScreen.dart';
import 'package:sizer/sizer.dart';

class JobListCard extends StatelessWidget {
  const JobListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: EdgeInsets.fromLTRB(0.1.h, 10.h, 0, 0),
                child: Text(
                  "Job List",
                  style: GoogleFonts.lexend(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ))),
                SizedBox(height: 4.h,),
        InkWell(onTap: (){
          Get.to(()=>weightScreen());
        },
          child: JobSheetCard(
            JobStatus: 0,
          ),
        )
      ],
    );
  }
}
