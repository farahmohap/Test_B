import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class DeliveryServiceScreen extends StatelessWidget {
  const DeliveryServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivery'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Delivery Service Screen'),
            SizedBox(
              height: 10.h,
            ),
            Lottie.asset("assets/animations/delivery.json"),
          ],
        ),
      ),
    );
  }
}
