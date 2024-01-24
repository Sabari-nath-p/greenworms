import 'package:flutter/material.dart';
import 'package:greenworms/Screen/homeScreen/components/HMTitle.dart';
import 'package:greenworms/Screen/homeScreen/components/JobListCard.dart';
import 'package:sizer/sizer.dart';

import 'components/HMTcard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // HPrimaryCard(),
        Positioned(
          child: Container(
            width: 98.68.w,
            height: 25.76.h,
            decoration: BoxDecoration(
              color: Color.fromRGBO(2, 97, 99, 1),
            ),
          ),
        ),
        Positioned(left: 6.8.w, top: 17.41.h, child: HMTCard()),
        Positioned(left: 2.7.w, right: 2.7.w, top: 7.6.h, child: HMTitle()),
        Positioned(
            left: 20, right: 0, top: 212, height: 200, child: JobListCard()),
      ],
    );
  }
}
