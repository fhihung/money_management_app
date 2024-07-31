import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/tab_bar/common_tab_bar.dart';
import 'package:money_management_app/transaction/pages/create_transaction/bloc/create_transaction_bloc.dart';
import 'package:money_management_app/transaction/pages/create_transaction/bloc/create_transaction_event.dart';
import 'package:money_management_app/transaction/pages/create_transaction/bloc/create_transaction_state.dart';
import 'package:money_management_app/transaction/pages/create_transaction/pages/create_expense_transaction_page.dart';
import 'package:money_management_app/transaction/pages/create_transaction/pages/create_income_transaction_page.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class CreateTransactionPage extends StatefulWidget {
  const CreateTransactionPage({super.key});

  @override
  State<CreateTransactionPage> createState() => _CreateTransactionPageState();
}

class _CreateTransactionPageState extends State<CreateTransactionPage>
    with TickerProviderStateMixin {
  late int currentTab;
  late TabController tabController;

  String? selectedValue;
  List<Tab> tabs = [
    const Tab(text: 'Expense'),
    const Tab(text: 'Income'),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2,
      vsync: this,
    );
    currentTab = tabController.index;
    tabController.addListener(_onTabChanged);
    context.read<CreateTransactionBloc>().add(
          const CreateTransactionInitiated(),
        );
  }

  @override
  void dispose() {
    tabController.removeListener(_onTabChanged);
    super.dispose();
  }

  void _onTabChanged() {
    if (!tabController.indexIsChanging && currentTab != tabController.index) {
      currentTab = tabController.index;
    }
  }

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return BlocBuilder<CreateTransactionBloc, CreateTransactionState>(
      builder: (context, state) {
        return CupertinoStackedTransition(
          cornerRadius: Tween(
            begin: 0,
            end: AppSpaces.space6,
          ),
          child: Scaffold(
            appBar: const CommonAppBar(
              showBackButton: true,
              title: Text('New Transaction'),
            ),
            body: Column(
              children: [
                // BlocBuilder<AppBloc, AppState>(
                //   buildWhen: (previous, current) => previous.isDarkTheme != current.isDarkTheme,
                //   builder: (context, state) {
                //     return SwitchListTile.adaptive(
                //       title: const Text('Theme'
                //           // S.current.darkTheme,
                //           ),
                //       // tileColor: AppColors.current.primaryColor,
                //       value: state.isDarkTheme,
                //       onChanged: (isDarkTheme) => context.read<AppBloc>().add(
                //             ThemeChanged(isDarkTheme: isDarkTheme),
                //           ),
                //     );
                //   },
                // ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: AppSpaces.space6,
                  ),
                  decoration: BoxDecoration(
                    color: appColors.backgroundGray7,
                    borderRadius: BorderRadius.circular(99),
                  ),
                  child: CommonTabBar(tabController: tabController, tabs: tabs),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      CreateExpenseTransactionPage(
                        state: state,
                      ),
                      CreateIncomeTransactionPage(
                        state: state,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
