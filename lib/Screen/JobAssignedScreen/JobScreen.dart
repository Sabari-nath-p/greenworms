import 'package:flutter/material.dart';
import 'package:greenworms/Screen/JobAssignedScreen/Component/StatusBar.dart';

class JobScreen extends StatelessWidget {
  const JobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [StatusBar()],
        ),
      ),
    ));
  }
}
