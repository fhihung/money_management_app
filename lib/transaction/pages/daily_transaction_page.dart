import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/widgets/transaction/common_transaction.dart';
import 'package:money_management_app/transaction/bloc/transaction_bloc.dart';
import 'package:money_management_app/transaction/bloc/transaction_event.dart';
import 'package:money_management_app/transaction/bloc/transaction_state.dart';

class DailyTransactionPage extends StatefulWidget {
  const DailyTransactionPage({
    super.key,
  });

  @override
  State<DailyTransactionPage> createState() => _DailyTransactionPageState();
}

class _DailyTransactionPageState extends State<DailyTransactionPage> {
  @override
  void initState() {
    super.initState();
    context.read<TransactionBloc>().add(const DailyTransactionFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppSpaces.space3,
            horizontal: AppSpaces.space6,
          ),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    final dailyTransaction = state.dailyTransactions[index];
                    return Column(
                      children: [
                        CommonTransaction(
                          categoryType: dailyTransaction.category?.type,
                          image: dailyTransaction.category?.iconPath,
                          title: dailyTransaction.title,
                          subtitle: dailyTransaction.note,
                          price: dailyTransaction.amount.toString(),
                          dateTime: DateFormat('yyyy-MM-dd HH:mm').format(
                            dailyTransaction.transactionDate!,
                          ),
                        ),
                        const Divider(
                          height: 10,
                        ),
                      ],
                    );
                  },
                  childCount: state.dailyTransactions.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
