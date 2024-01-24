import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class JobSheetCard extends StatelessWidget {
  const JobSheetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
    
      children: [
              Container(
     
      width: 89.6.w,
      height:38.11.h ,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.02.w),),
        borderRadius: BorderRadius.circular(0.9.h)
      ),
    )
      ],
    ))
   ;
  }
}
