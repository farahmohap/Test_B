import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_b/core/routing/routes.dart';
import 'package:test_b/core/routing/app_router.dart';
import 'package:test_b/features/bottom_nav/presentation/screens/presist_nav.dart';

void main() {
  runApp(TestB());
}

class TestB extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  TestB({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BaseScreen(),
      ),
    );
  }
}
