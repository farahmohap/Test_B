import 'package:flutter/material.dart';
import 'package:test_b/core/helpers/extensions.dart';
import 'package:test_b/core/routing/routes.dart';
import 'package:test_b/features/bottom_nav/presentation/widgets/bottom_sheet_item.dart';
import 'package:test_b/features/delivery_service/presentation/screens/delivery.dart';
import 'package:test_b/features/medical_service/presentation/screens/medical_service.dart';

// ignore: must_be_immutable
class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({super.key, required this.setLastSelectedScreen});
  final setLastSelectedScreen;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BottomSheetItem(
          text: 'Medical Service',
          icon: Icons.medical_services,
          onTap: () {
            context.pop();
            setLastSelectedScreen(const MedicalServiceScreen());
          },
        ),
        BottomSheetItem(
          text: 'Delivery Service',
          icon: Icons.delivery_dining,
          onTap: () {
            context.pop();
            setLastSelectedScreen(const DeliveryServiceScreen());
          },
        ),
      ],
    );
  }
}
