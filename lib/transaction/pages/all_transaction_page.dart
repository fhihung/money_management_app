import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/widgets/transaction/common_transaction.dart';
import 'package:money_management_app/transaction/bloc/transaction_bloc.dart';
import 'package:money_management_app/transaction/bloc/transaction_event.dart';
import 'package:money_management_app/transaction/bloc/transaction_state.dart';
import 'package:money_management_app/transaction/widgets/transaction_section.dart';
import 'package:sliver_tools/sliver_tools.dart';

class AllTransactionPage extends StatefulWidget {
  const AllTransactionPage({super.key});

  @override
  State<AllTransactionPage> createState() => _AllTransactionPageState();
}

class _AllTransactionPageState extends State<AllTransactionPage> {
  @override
  void initState() {
    super.initState();
    context.read<TransactionBloc>().add(const AllTransactionFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpaces.space6),
          child: CustomScrollView(
            slivers: [
              if (state.allTransactions.isEmpty)
                const SliverFillRemaining(
                  child: Center(
                    child: Text('No transactions found'),
                  ),
                )
              else
                ...state.allTransactions.map((transactionGroup) {
                  return TransactionSection(
                    title: transactionGroup.date ?? '',
                    items: transactionGroup.transactions
                            ?.map(
                              (transaction) => CommonTransaction(
                                categoryType: transaction.category?.type,
                                image: transaction.category?.iconPath,
                                title: transaction.title ?? '',
                                subtitle: transaction.note ?? '',
                                price: Formatter.formatAmount(
                                  transaction.amount!,
                                ),
                                dateTime: DateFormat('HH:mm')
                                    .format(transaction.transactionDate!),
                              ),
                            )
                            .toList() ??
                        [],
                    totalBalance: transactionGroup.totalBalance ?? 0.0,
                  );
                }),
            ],
          ),
        );
      },
    );
  }
}

class TransactionSection extends StatelessWidget {
  const TransactionSection({
    required this.title,
    required this.items,
    required this.totalBalance,
    super.key,
  });

  final String title;
  final List<Widget> items;
  final double totalBalance;

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      pushPinnedChildren: true,
      children: [
        SliverPinnedHeader(
          child: TransactionTitle(
            title: Text(title),
            content: BalanceText(
              balance: totalBalance,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate.fixed(items),
        ),
      ],
    );
  }
}

class BalanceText extends StatelessWidget {
  const BalanceText({
    required this.balance,
    super.key,
  });

  final double balance;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Text(
      Formatter.formatAmount(balance),
      style: AppTextStyles.headlineSm.copyWith(
        color: balance < 0 ? appColors.textRed : appColors.textGreen,
      ),
    );
  }
}
