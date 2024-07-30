import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/card/pages/credit_card_page.dart';
import 'package:money_management_app/card/pages/debit_card_page.dart';
import 'package:money_management_app/common/tab_bar/common_tab_bar.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> with TickerProviderStateMixin {
  late TabController tabController;
  late int tabControllerIndex;
  List<Tab> tabs = [
    const Tab(
      text: 'Debit Cards',
    ),
    const Tab(
      text: 'Credit Cards',
    ),
  ];

  @override
  void initState() {
    tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );
    tabControllerIndex = tabController.index;
    tabController.addListener(_onTabChanged);

    super.initState();
  }

  void _onTabChanged() {
    if (!tabController.indexIsChanging &&
        tabControllerIndex != tabController.index) {
      tabControllerIndex = tabController.index;
    }
  }

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Scaffold(
      appBar: CommonAppBar(
        title: const Text('Card Management'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: AppSpaces.space2),
            child: Assets.icons.linear.svg.scanner.svg(
              colorFilter: ColorFilter.mode(
                appColors.backgroundDarkVersion,
                BlendMode.srcIn,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: AppSpaces.space6,
              ),
              decoration: BoxDecoration(
                color: appColors.backgroundGray7,
                borderRadius: BorderRadius.circular(99),
              ),
              child: CommonTabBar(
                tabController: tabController,
                tabs: tabs,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  DebitCardPage(),
                  CreditCardPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
