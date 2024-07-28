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
            child: ListView.separated(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: state.allTransactions.length,
              separatorBuilder: (context, index) => const Divider(
                height: 10,
              ),
              itemBuilder: (context, index) {
                final transaction = state.allTransactions[index];
                return CommonTransaction(
                  categoryType: transaction.category?.type,
                  image: transaction.category?.iconPath,
                  title: transaction.title,
                  subtitle: transaction.note,
                  price: transaction.amount.toString(),
                  dateTime: DateFormat('dd/MM/yyyy').format(
                    transaction.transactionDate!,
                  ),
                );
              },
            ));
      },
    );
  }
}

class TransactionSection extends MultiSliver {
  TransactionSection({
    required String title,
    required Widget content,
    required List<Widget> items,
    super.key,
  }) : super(
          pushPinnedChildren: true,
          children: [
            SliverPinnedHeader(
              child: TransactionTitle(title: Text(title), content: content),
            ),
            SliverList(
              delegate: SliverChildListDelegate.fixed(items),
            ),
          ],
        );
}
