import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/tab_bar/common_tab_bar.dart';
import 'package:money_management_app/common/text_field/common_text_field.dart';
import 'package:money_management_app/common/widgets/search/common_search_field.dart';
import 'package:money_management_app/models/m_category.dart';
import 'package:money_management_app/transaction/widgets/sub_category_modal.dart';

import '../../models/m_account.dart';

class CreateTransactionPage extends StatefulWidget {
  const CreateTransactionPage({super.key});

  @override
  State<CreateTransactionPage> createState() => _CreateTransactionPageState();
}

class _CreateTransactionPageState extends State<CreateTransactionPage> with TickerProviderStateMixin {
  late int currentTab;
  late TabController tabController;

  final List<MAccount> accounts = [
    MAccount(
      1,
      'Cash',
      '3600121203912',
      '1000',
    ),
    MAccount(
      2,
      'Bank',
      '21931293013103',
      '5000',
    ),
  ];
  final List<MCategory> categories = [
    MCategory(
      1,
      'Food',
    ),
    MCategory(
      2,
      'Transport',
    ),
    MCategory(
      3,
      'Shopping',
    ),
    MCategory(
      4,
      'Medical',
    ),
    MCategory(
      5,
      'Entertainment',
    ),
    MCategory(
      6,
      'Education',
    ),
  ];
  String? selectedValue;
  List<Tab> tabs = [
    const Tab(
      text: 'Expense',
    ),
    const Tab(
      text: 'Income',
    ),
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

  void _showCupertinoModalBottomSheet(BuildContext context, Widget child) {
    showCupertinoModalBottomSheet<void>(
      expand: true,
      topRadius: const Radius.circular(AppSpaces.space7),
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Material(
        child: SizedBox(
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Scaffold(
      appBar: const CommonAppBar(
        showBackButton: true,
        title: Text('New Transaction'),
      ),
      body: Column(
        children: [
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
                _buildIncomeTab(),
                const Center(
                  child: Text('Content for Tab 2'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIncomeTab() {
    final appColors = context.appColors;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpaces.space6,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: AppSpaces.space10,
          ),
          CommonTextField(
            keyboardType: TextInputType.text,
            controller: TextEditingController(),
            labelText: 'Title',
            prefixIcon: Assets.icons.linear.svg.textBlock.svg(
              colorFilter: ColorFilter.mode(
                appColors.textGray2,
                BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(
            height: AppSpaces.space6,
          ),
          GestureDetector(
            onTap: () {
              _showCupertinoModalBottomSheet(
                context,
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpaces.space6,
                  ),
                  decoration: BoxDecoration(
                    color: appColors.backgroundWhite,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: AppSpaces.space6,
                        ),
                        width: 53,
                        height: 4,
                        decoration: BoxDecoration(
                          color: appColors.backgroundGray4,
                          borderRadius: BorderRadius.circular(99),
                        ),
                      ),
                      const SizedBox(
                        height: AppSpaces.space5,
                      ),
                      Text(
                        'Select Account',
                        style: AppTextStyles.bodyMd2.copyWith(
                          color: appColors.textBlackDarkVersion,
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      CommonSearchField(
                        controller: TextEditingController(),
                      ),
                      const SizedBox(
                        height: AppSpaces.space6,
                      ),
                      Flexible(
                        child: ListView.builder(
                          shrinkWrap: true,
                          padding: const EdgeInsets.symmetric(
                            vertical: AppSpaces.space5,
                          ),
                          itemCount: accounts.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Container(
                                padding: const EdgeInsets.all(AppSpaces.space3),
                                decoration: BoxDecoration(
                                  color: appColors.backgroundPrimaryLight8_2,
                                  borderRadius: BorderRadius.circular(99),
                                  border: Border.all(
                                    color: appColors.backgroundPrimaryLight8_3,
                                    width: AppSpaces.space1,
                                  ),
                                ),
                                child: Assets.icons.linear.svg.bank.svg(
                                  width: 20,
                                  height: 20,
                                  colorFilter: ColorFilter.mode(
                                    appColors.textGray2,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                              title: Text(accounts[index].name!),
                              subtitle: Text('Account number: ${accounts[index].accountNumber}'),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpaces.space5,
                vertical: 14,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: appColors.backgroundWhite2DarkVersion,
                borderRadius: BorderRadius.circular(AppSpaces.space3),
                border: Border.all(
                  color: appColors.border5,
                ),
              ),
              child: Row(
                children: [
                  Assets.icons.linear.svg.bank.svg(
                    width: 20,
                    height: 20,
                    colorFilter: ColorFilter.mode(
                      appColors.textGray2,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(width: AppSpaces.space2),
                  Text(
                    'Account',
                    style: AppTextStyles.bodySm2.copyWith(
                      color: appColors.textGray2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: AppSpaces.space6,
          ),
          CommonTextField(
            keyboardType: const TextInputType.numberWithOptions(
              decimal: true,
            ),
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            controller: TextEditingController(),
            labelText: 'Amount',
            prefixIcon: Assets.icons.linear.svg.dollarCircle.svg(
              colorFilter: ColorFilter.mode(
                appColors.textGray2,
                BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(
            height: AppSpaces.space6,
          ),
          GestureDetector(
            onTap: () {
              _showCupertinoModalBottomSheet(
                context,
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpaces.space6,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: AppSpaces.space6,
                        ),
                        width: 53,
                        height: 4,
                        decoration: BoxDecoration(
                          color: appColors.backgroundGray4,
                          borderRadius: BorderRadius.circular(99),
                        ),
                      ),
                      const SizedBox(
                        height: AppSpaces.space5,
                      ),
                      Text(
                        'Select Category',
                        style: AppTextStyles.bodyMd2.copyWith(
                          color: appColors.textBlackDarkVersion,
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      CommonSearchField(
                        controller: TextEditingController(),
                      ),
                      const SizedBox(
                        height: AppSpaces.space6,
                      ),
                      Flexible(
                        child: ListView.builder(
                          shrinkWrap: true,
                          padding: const EdgeInsets.symmetric(
                            vertical: AppSpaces.space5,
                          ),
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Container(
                                padding: const EdgeInsets.all(AppSpaces.space3),
                                decoration: BoxDecoration(
                                  color: appColors.backgroundPrimaryLight8_2,
                                  borderRadius: BorderRadius.circular(99),
                                  border: Border.all(
                                    color: appColors.backgroundPrimaryLight8_3,
                                    width: AppSpaces.space1,
                                  ),
                                ),
                                child: Assets.icons.linear.svg.category.svg(
                                  colorFilter: ColorFilter.mode(
                                    appColors.textGray2,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                              title: Text(categories[index].name!),
                              onTap: () {
                                // Navigator.pop(context);
                                _showCupertinoModalBottomSheet(
                                  context,
                                  SubCategoryModal(
                                    categoryId: categories[index].id!,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: RoundedContainer(
              title: const Text('Category'),
              icon: Assets.icons.linear.svg.category.svg(
                colorFilter: ColorFilter.mode(
                  appColors.textGray2,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
