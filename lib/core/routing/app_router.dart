import 'package:flutter/material.dart';
import 'package:test_b/core/routing/routes.dart';
import 'package:test_b/features/bottom_nav/presentation/screens/nav_screen.dart';
import 'package:test_b/features/delivery_service/presentation/screens/delivery.dart';
import 'package:test_b/features/medical_service/presentation/screens/medical_service.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.nav:
        return MaterialPageRoute(
          builder: (_) => const NavScreen(),
        );
      case Routes.medicalService:
        return MaterialPageRoute(
          builder: (_) => const MedicalServiceScreen(),
        );

      case Routes.deliverDervice:
        return MaterialPageRoute(
          builder: (_) => const DeliveryServiceScreen(),
        );

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
