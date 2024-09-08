import 'package:flutter/material.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("assets/animations/medical.json"),
          const Text('Medical Service Screen'),
        ],
      ),
    );
  }
}
