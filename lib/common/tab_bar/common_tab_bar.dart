import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';

class CommonTabBar extends StatelessWidget {
  const CommonTabBar({
    required this.tabController,
    required this.tabs,
    super.key,
  });

  final TabController tabController;
  final List<Tab> tabs;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return TabBar(
      overlayColor: WidgetStateProperty.all<Color?>(
        appColors.backgroundWhite2DarkVersion,
      ),
      unselectedLabelColor: appColors.textGray1,
      labelColor: appColors.textPrimary,
      labelStyle: AppTextStyles.bodyXSm2,
      controller: tabController,
      tabs: tabs,
      indicatorColor: Colors.transparent,
      labelPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        color: appColors.backgroundWhite2DarkVersion,
        borderRadius: BorderRadius.circular(99),
      ),
      indicatorPadding: const EdgeInsets.symmetric(
        horizontal: AppSpaces.space1,
        vertical: AppSpaces.space1,
      ),
    );
  }
}
