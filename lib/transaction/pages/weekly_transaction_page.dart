import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/widgets/transaction/common_transaction.dart';
import 'package:money_management_app/transaction/bloc/transaction_bloc.dart';
import 'package:money_management_app/transaction/bloc/transaction_event.dart';
import 'package:money_management_app/transaction/bloc/transaction_state.dart';

class WeeklyTransactionPage extends StatefulWidget {
  const WeeklyTransactionPage({
    super.key,
  });

  @override
  State<WeeklyTransactionPage> createState() => _WeeklyTransactionPageState();
}

class _WeeklyTransactionPageState extends State<WeeklyTransactionPage> {
  @override
  void initState() {
    super.initState();
    context.read<TransactionBloc>().add(const WeeklyTransactionFetched());
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
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    final monthlyTransaction = state.weeklyTransactions[index];
                    return Column(
                      children: [
                        CommonTransaction(
                          categoryType: monthlyTransaction.category?.type,
                          image: monthlyTransaction.category?.iconPath,
                          title: monthlyTransaction.title,
                          subtitle: monthlyTransaction.note,
                          price: monthlyTransaction.amount.toString(),
                          dateTime: monthlyTransaction.transactionDate.toString(),
                        ),
                        const Divider(
                          height: 10,
                        ),
                      ],
                    );
                  },
                  childCount: state.weeklyTransactions.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
