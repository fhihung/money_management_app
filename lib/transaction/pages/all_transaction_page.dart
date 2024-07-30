import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/widgets/transaction/common_transaction.dart';
import 'package:money_management_app/transaction/bloc/transaction_bloc.dart';
import 'package:money_management_app/transaction/bloc/transaction_event.dart'; // Make sure to add this package to your pubspec.yaml
import 'package:money_management_app/transaction/bloc/transaction_state.dart';
import 'package:money_management_app/transaction/widgets/transaction_section.dart';
import 'package:sliver_tools/sliver_tools.dart';

class AllTransactionPage extends StatefulWidget {
  const AllTransactionPage({
    super.key,
  });

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
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpaces.space6,
          ),
          child: CustomScrollView(
            slivers: [
              if (state.allTransactions != null) ...[
                for (final transactionMap in state.allTransactions!)
                  for (final entry in transactionMap.entries)
                    TransactionSection(
                      title: entry.key,
                      items: entry.value
                          .map(
                            (transaction) => CommonTransaction(
                              categoryType: transaction?.category?.type,
                              image: transaction?.category?.iconPath,
                              title: transaction?.title,
                              subtitle: transaction?.note,
                              price: transaction?.amount.toString(),
                              dateTime: DateFormat('dd-MM-yyyy').format(
                                transaction?.transactionDate ?? DateTime.now(),
                              ),
                            ),
                          )
                          .toList(),
                    ),
              ],
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
    super.key,
  });

  final String title;
  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      pushPinnedChildren: true,
      children: [
        SliverPinnedHeader(
          child: TransactionTitle(title: Text(title)),
        ),
        SliverList(
          delegate: SliverChildListDelegate.fixed(items),
        ),
      ],
    );
  }
}
