import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_b/features/bottom_nav/logic/bottom_nav_cubit.dart';
import 'package:test_b/features/bottom_nav/presentation/widgets/bottom_sheet_body.dart';
import 'package:test_b/features/categories/presentation/screens/categories.dart';
import 'package:test_b/features/home/presentation/screens/home.dart';
import 'package:test_b/features/bottom_nav/presentation/widgets/bottom_nav_bar_items.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    const Home(),
    const Categories(),
    Container(),
  ];

  void _showServicesBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const BottomSheetBody();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: BlocBuilder<BottomNavCubit, int>(
        builder: (context, state) {
          return Scaffold(
            body: _screens[state],
            bottomNavigationBar: BottomNavBarWidget(
              onTap: (index) {
                if (index == 2) {
                  _showServicesBottomSheet(context);
                } else {
                  context.read<BottomNavCubit>().updateIndex(index);
                }
              },
            ),
          );
        },
      ),
    );
  }
}
