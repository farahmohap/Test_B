import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DeliveryServiceScreen extends StatelessWidget {
  const DeliveryServiceScreen({super.key});

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
          Lottie.asset("assets/animations/delivery.json"),
          const Text('Delivery Service Screen'),
        ],
      ),
    );
  }
}
