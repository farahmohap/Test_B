import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class MedicalServiceScreen extends StatelessWidget {
  const MedicalServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medical'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Medical Service Screen'),
            SizedBox(
              height: 10.h,
            ),
            Lottie.asset("assets/animations/medical.json"),
          ],
        ),
      ),
    );
  }
}
