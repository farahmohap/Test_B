import 'package:flutter/material.dart';
import 'package:test_b/core/helpers/extensions.dart';
import 'package:test_b/core/routing/routes.dart';
import 'package:test_b/features/bottom_nav/presentation/widgets/bottom_sheet_item.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BottomSheetItem(
          text: 'Medical Service',
          icon: Icons.medical_services,
          onTap: () => context.pushNamed(Routes.medicalService),
        ),
        BottomSheetItem(
          text: 'Delivery Service',
          icon: Icons.delivery_dining,
          onTap: () => context.pushNamed(Routes.deliverDervice),
        ),
      ],
    );
  }
}
