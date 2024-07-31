import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/widgets/transaction/common_transaction.dart';
import 'package:money_management_app/transaction/bloc/transaction_bloc.dart';
import 'package:money_management_app/transaction/bloc/transaction_event.dart';
import 'package:money_management_app/transaction/bloc/transaction_state.dart';

class MonthlyTransactionPage extends StatefulWidget {
  const MonthlyTransactionPage({
    super.key,
  });

  @override
  State<MonthlyTransactionPage> createState() => _MonthlyTransactionPageState();
}

class _MonthlyTransactionPageState extends State<MonthlyTransactionPage> {
  @override
  void initState() {
    super.initState();
    context.read<TransactionBloc>().add(const MonthlyTransactionFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpaces.space6,
            vertical: AppSpaces.space3,
          ),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    final monthlyTransaction = state.monthlyTransactions[index];
                    return Column(
                      children: [
                        CommonTransaction(
                          categoryType: monthlyTransaction.category?.type,
                          image: monthlyTransaction.category?.iconPath,
                          title: monthlyTransaction.title,
                          subtitle: monthlyTransaction.note,
                          price: monthlyTransaction.amount.toString(),
                          dateTime: DateFormat('yyyy-MM-dd HH:mm').format(
                            monthlyTransaction.transactionDate!,
                          ),
                        ),
                        const Divider(
                          height: 10,
                        ),
                      ],
                    );
                  },
                  childCount: state.monthlyTransactions.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
