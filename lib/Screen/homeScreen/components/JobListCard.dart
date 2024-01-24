import 'package:flutter/material.dart';
import 'package:greenworms/Screen/homeScreen/components/JobSheetCard.dart';

class JobListCard extends StatelessWidget {
  const JobListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text("Job List"), JobSheetCard()],
    );
  }
}
