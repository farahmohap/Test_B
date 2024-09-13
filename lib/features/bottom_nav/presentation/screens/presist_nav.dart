import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:test_b/core/static_lists.dart';
import 'package:test_b/features/bottom_nav/presentation/widgets/bottom_sheet_body.dart';
import 'package:test_b/features/home/presentation/screens/home.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  late Widget _lastSelectedScreen;

  @override
  void initState() {
    super.initState();
    _lastSelectedScreen = const Home(); //Initial
  }

  void setLastSelectedScreen(Widget screen) {
    setState(() {
      _lastSelectedScreen = screen;
      _controller.jumpToTab(2);
    });
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return BottomSheetBody(
          setLastSelectedScreen: setLastSelectedScreen,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: buildScreens(_lastSelectedScreen),
      items: navBarsItems(),
      onItemSelected: (index) {
        if (index == 2) {
          _showBottomSheet();
        } else {
          // When switching between tabs,the last viewed tab=third tab's content
          setState(() {
            _lastSelectedScreen = buildScreens(_lastSelectedScreen)[index];
          });
        }
      },
      navBarStyle: NavBarStyle.style1,
    );
  }
}
