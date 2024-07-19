import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/home/pages/home_page.dart';
import 'package:money_management_app/setting/pages/setting_page.dart';
import 'package:money_management_app/transaction/pages/transaction_page.dart';

class CommonBottomNavigation extends StatefulWidget {
  const CommonBottomNavigation({super.key});

  @override
  State<CommonBottomNavigation> createState() => _CommonBottomNavigationState();
}

class _CommonBottomNavigationState extends State<CommonBottomNavigation> {
  int _selectedIndex = 1;

  final List<Widget> _screens = [
    const HomePage(),
    const TransactionPage(),
    const TransactionPage(),
    const TransactionPage(),
    const SettingPage(),
    // const SettingScreen(),
  ];

  final List<String> _iconPaths = [
    Assets.icons.linear.svg.home2.path,
    Assets.icons.linear.svg.arrangeSquare.path,
    Assets.icons.linear.svg.card.path,
    Assets.icons.linear.svg.chart2.path,
    Assets.icons.linear.svg.setting.path,
  ];

  final List<String> _boldIconPaths = [
    Assets.icons.bold.svg.home2.path,
    Assets.icons.bold.svg.arrangeSquare.path,
    Assets.icons.bold.svg.card.path,
    Assets.icons.bold.svg.chart21.path,
    Assets.icons.bold.svg.setting.path,
  ];

  final List<String> _labelList = [
    'Home',
    'Transaction',
    'Card',
    'Analytics',
    'Settings',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;

    return Scaffold(
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        scaleFactor: 0.4,
        itemCount: _iconPaths.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? appColors.backgroundPrimaryLight3 : appColors.backgroundGray4;
          final iconPath = isActive ? _boldIconPaths[index] : _iconPaths[index];
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconPath,
                width: 24,
                height: 24,
                color: color,
              ),
              const SizedBox(height: 4),
              Text(
                _labelList[index],
                style: TextStyle(
                  color: color,
                  fontSize: 11,
                ),
              ),
            ],
          );
        },
        backgroundColor: appColors.backgroundWhite2DarkVersion,
        activeIndex: _selectedIndex,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        onTap: _onItemTapped,
        //other params
      ),
      body: _screens[_selectedIndex],
    );
  }
}
