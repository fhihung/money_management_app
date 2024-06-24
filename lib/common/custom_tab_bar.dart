// import 'package:flutter/material.dart';
// import 'package:shipper_app/utils/utils.dart';
//
// class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomTabBar({required this.tabs, super.key});
//   final List<Widget> tabs;
//
//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return Material(
//       color: dark ? AppColors.black : AppColors.white,
//       child: TabBar(
//         tabAlignment: TabAlignment.start,
//         tabs: tabs,
//         isScrollable: true,
//         indicatorColor: AppColors.primary,
//         labelColor: dark ? AppColors.white : AppColors.primary,
//         unselectedLabelColor: AppColors.darkGrey,
//       ),
//     );
//   }
//
//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
// }
