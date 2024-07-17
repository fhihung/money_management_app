import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/widgets/search/common_search_field.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> with TickerProviderStateMixin {
  late TabController tabController;
  late List<Tab> tabs;
  late int tabControllerIndex;

  @override
  void initState() {
    tabs = [
      const Tab(
        text: 'All',
      ),
      const Tab(
        text: 'Today',
      ),
      const Tab(
        text: 'This Week',
      ),
      const Tab(
        text: 'This Month',
      ),
    ];
    tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 1,
    );
    tabControllerIndex = tabController.index;
    tabController.addListener(_onTabChanged);

    super.initState();
  }

  @override
  void dispose() {
    tabController.removeListener(_onTabChanged);
    super.dispose();
  }

  void _onTabChanged() {
    if (!tabController.indexIsChanging && tabControllerIndex != tabController.index) {
      tabControllerIndex = tabController.index;
    }
  }

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 1,
        onPressed: () {},
        backgroundColor: appColors.backgroundPrimary,
        child: const Icon(
          Iconsax.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Transaction',
          style: AppTextStyles.bodyMd2.copyWith(
            color: appColors.textBlackDarkVersion,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Image.asset(
              Assets.icons.regular.download.path,
              width: 24,
              height: 24,
              color: appColors.backgroundGray,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpaces.space6,
              vertical: AppSpaces.space6,
            ),
            child: CommonSearchField(
              controller: TextEditingController(),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: AppSpaces.space6,
            ),
            decoration: BoxDecoration(
              color: appColors.backgroundGray7,
              borderRadius: BorderRadius.circular(99),
            ),
            child: TabBar(
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
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                Center(
                  child: Text('Content for Tab 1'),
                ),
                Center(
                  child: Text('Content for Tab 2'),
                ),
                Center(
                  child: Text('Content for Tab 3'),
                ),
                Center(
                  child: Text('Content for Tab 4'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
