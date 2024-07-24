import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/app/bloc/app_bloc.dart';
import 'package:money_management_app/app/bloc/app_event.dart';
import 'package:money_management_app/app/bloc/app_state.dart';
import 'package:money_management_app/common/modal_sheet/show_modal_sheet.dart';
import 'package:money_management_app/common/tab_bar/common_tab_bar.dart';
import 'package:money_management_app/common/text_field/common_text_field.dart';
import 'package:money_management_app/common/widgets/search/common_search_field.dart';
import 'package:money_management_app/models/enums.dart';
import 'package:money_management_app/models/m_account.dart';
import 'package:money_management_app/models/m_category.dart';
import 'package:money_management_app/transaction/pages/create_transaction/bloc/create_transaction_bloc.dart';
import 'package:money_management_app/transaction/pages/create_transaction/bloc/create_transaction_event.dart';
import 'package:money_management_app/transaction/pages/create_transaction/bloc/create_transaction_state.dart';
import 'package:money_management_app/transaction/widgets/rounded_container_with_chips.dart';
import 'package:money_management_app/transaction/widgets/sub_category_modal.dart';
import 'package:smooth_sheets/smooth_sheets.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

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
      CategoryType.expense,
    ),
    MCategory(
      2,
      'Transport',
      CategoryType.expense,
    ),
    MCategory(
      3,
      'Shopping',
      CategoryType.expense,
    ),
    MCategory(
      4,
      'Medical',
      CategoryType.expense,
    ),
    MCategory(
      5,
      'Entertainment',
      CategoryType.expense,
    ),
    MCategory(
      6,
      'Education',
      CategoryType.expense,
    ),
    MCategory(
      7,
      'Others',
      CategoryType.expense,
    ),
    MCategory(
      1,
      'Food',
      CategoryType.expense,
    ),
    MCategory(
      2,
      'Transport',
      CategoryType.expense,
    ),
    MCategory(
      3,
      'Shopping',
      CategoryType.expense,
    ),
    MCategory(
      4,
      'Medical',
      CategoryType.expense,
    ),
    MCategory(
      5,
      'Entertainment',
      CategoryType.expense,
    ),
    MCategory(
      6,
      'Education',
      CategoryType.expense,
    ),
    MCategory(
      7,
      'Others',
      CategoryType.expense,
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
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpaces.space6,
              ),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {},
                child: const Text('Save'),
              ),
            ),
            appBar: const CommonAppBar(
              showBackButton: true,
              title: Text('New Transaction'),
            ),
            body: Column(
              children: [
                BlocBuilder<AppBloc, AppState>(
                  buildWhen: (previous, current) => previous.isDarkTheme != current.isDarkTheme,
                  builder: (context, state) {
                    return SwitchListTile.adaptive(
                      title: const Text('Theme'
                          // S.current.darkTheme,
                          ),
                      // tileColor: AppColors.current.primaryColor,
                      value: state.isDarkTheme,
                      onChanged: (isDarkTheme) => context.read<AppBloc>().add(
                            ThemeChanged(isDarkTheme: isDarkTheme),
                          ),
                    );
                  },
                ),
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
                      _buildIncomeTab(state),
                      const Center(
                        child: Text('Content for Tab 2'),
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

  Widget _buildIncomeTab(CreateTransactionState state) {
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
            prefixIcon: Assets.icons.linear.svg.documentText.svg(
              width: 24,
              height: 24,
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
              CommonModalSheet.show(
                isFullScreen: false,
                context,
                child: ColoredBox(
                  color: appColors.backgroundWhite2DarkVersion,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpaces.space6,
                    ),
                    child: Column(
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
                          height: AppSpaces.space7,
                        ),
                        CommonSearchField(
                          controller: TextEditingController(),
                        ),
                        const SizedBox(
                          height: AppSpaces.space6,
                        ),
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
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
                              subtitle: Text(
                                'Account number: ${accounts[index].accountNumber}',
                              ),
                              onTap: () {
                                context.read<CreateTransactionBloc>().add(
                                      AccountSelected(accounts[index]),
                                    );
                                Navigator.pop(context);
                              },
                            );
                          },
                        ),
                      ],
                    ),
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
                  if (state.selectedAccount != null)
                    Text(
                      state.selectedAccount!.name!,
                      style: AppTextStyles.bodySm2.copyWith(
                        color: appColors.textGray2,
                      ),
                    )
                  else
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
              CommonModalSheet.show(
                isFullScreen: false,
                context,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpaces.space6,
                  ),
                  child: Column(
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
                                CommonModalSheet.show(
                                  context,
                                  child: SubCategoryModal(
                                    categoryId: categories[index].id!,
                                    onTap: (subCategory) {
                                      context.read<CreateTransactionBloc>().add(
                                            SubCategorySelected(subCategory),
                                          );
                                      Navigator.pop(context);
                                    },
                                  ),
                                  isFullScreen: false,
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
            child: RoundedContainerWithChips(
              // onDeleted: (subCategory) {
              //   context.read<CreateTransactionBloc>().add(
              //         SubCategoryDeselected(subCategory),
              //       );
              // },
              title: const Text('Category'),
              icon: Assets.icons.linear.svg.category.svg(
                width: 20,
                height: 20,
                colorFilter: ColorFilter.mode(
                  appColors.textGray2,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: AppSpaces.space6,
          ),
          RoundedContainer(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    actionsPadding: const EdgeInsets.only(
                      left: AppSpaces.space6,
                      right: AppSpaces.space6,
                      bottom: AppSpaces.space5,
                    ),
                    insetPadding: const EdgeInsets.symmetric(
                      horizontal: AppSpaces.space8,
                      vertical: AppSpaces.space5,
                    ),
                    actionsOverflowDirection: VerticalDirection.down,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSpaces.space6),
                    ),
                    content: Container(
                      decoration: BoxDecoration(
                        color: appColors.backgroundWhite2DarkVersion,
                        borderRadius: BorderRadius.circular(AppSpaces.space14),
                      ),
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width,
                      child: SfDateRangePicker(
                        monthFormat: 'MMMM',
                        todayHighlightColor: appColors.backgroundPrimary,
                        selectionColor: appColors.backgroundPrimary,
                        selectionTextStyle: AppTextStyles.bodyXSm2.copyWith(
                          color: appColors.textWhite2DarkVersion,
                        ),
                        showNavigationArrow: true,
                        headerStyle: DateRangePickerHeaderStyle(
                          textStyle: AppTextStyles.bodyMd2.copyWith(
                            color: appColors.textBlackDarkVersion,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        monthViewSettings: DateRangePickerMonthViewSettings(
                          viewHeaderStyle: DateRangePickerViewHeaderStyle(
                            textStyle: AppTextStyles.bodyXSm1.copyWith(
                              color: appColors.textBlackDarkVersion,
                            ),
                          ),
                          firstDayOfWeek: 1,
                          viewHeaderHeight: 50,
                          dayFormat: 'EEE',
                        ),
                        monthCellStyle: DateRangePickerMonthCellStyle(
                          todayCellDecoration: BoxDecoration(
                            color: appColors.backgroundPrimaryLight8_2,
                            shape: BoxShape.circle,
                          ),
                          textStyle: AppTextStyles.bodyXSm2.copyWith(
                            color: appColors.textBlackDarkVersion,
                          ),
                          todayTextStyle: AppTextStyles.bodyXSm2.copyWith(
                            color: appColors.textPrimary, // Change the text color of today to white
                          ),
                        ),
                      ),
                    ),
                    actions: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.only(
                                  bottom: AppSpaces.space,
                                ),
                                side: BorderSide(
                                  width: 1.5,
                                  color: appColors.backgroundPrimary,
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Cancel',
                                style: AppTextStyles.buttonSm.copyWith(
                                  color: appColors.textPrimary,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: AppSpaces.space6,
                          ),
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  vertical: AppSpaces.space3,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(99),
                                ),
                              ),
                              onPressed: () {
                                // Retrieve the selected date range
                                Navigator.pop(context);
                                // handle confirmation logic here
                              },
                              child: const Text('Apply'),
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                },
              );
            },
            title: Text('Date'),
            icon: Assets.icons.linear.svg.calendar.svg(
              width: 20,
              height: 20,
              colorFilter: ColorFilter.mode(
                appColors.textGray2,
                BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(
            height: AppSpaces.space6,
          ),
          CommonTextField(
            keyboardType: TextInputType.text,
            controller: TextEditingController(),
            labelText: 'Note',
            prefixIcon: Assets.icons.linear.svg.documentText.svg(
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                appColors.textGray2,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
