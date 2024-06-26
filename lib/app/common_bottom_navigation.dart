import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/utils/utils.dart';

class CommonBottomNavigation extends StatefulWidget {
  const CommonBottomNavigation({super.key});

  @override
  State<CommonBottomNavigation> createState() => _CommonBottomNavigationState();
}

class _CommonBottomNavigationState extends State<CommonBottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    // const ProductScreen(),
    // const SettingScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        // backgroundColor: dark ? AppColors.black : AppColors.white,
        // indicatorColor: dark ? AppColors.white.withOpacity(0.1) : AppColors.black.withOpacity(0.1),
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(
              Iconsax.home5,
              // color: dark ? AppColors.white : AppColors.black,
            ),
            icon: Icon(
              Iconsax.home_1,
              // color: dark ? AppColors.white : AppColors.black,
            ),
            label: 'Home',
          ),
          // NavigationDestination(
          //   selectedIcon: Icon(
          //     Iconsax.user,
          //     color: dark ? AppColors.white : AppColors.black,
          //   ),
          //   icon: Icon(
          //     Iconsax.user,
          //     color: dark ? AppColors.white : AppColors.black,
          //   ),
          //   label: 'Profile',
          // ),
        ],
      ),
      body: _screens[_selectedIndex],
    );
  }
}
