import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/widgets/transaction/common_transaction.dart';
import 'package:money_management_app/transaction/widgets/transaction_section.dart';
import 'package:sliver_tools/sliver_tools.dart'; // Make sure to add this package to your pubspec.yaml

class DailyTransactionPage extends StatelessWidget {
  const DailyTransactionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpaces.space6,
      ),
      child: CustomScrollView(
        slivers: [
          TransactionSection(
            title: 'Today',
            content: PriceUnit(
              price: '1000',
              sign: '+',
            ),
            items: [
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: 5,
                separatorBuilder: (context, index) => const Divider(
                  height: 10,
                ),
                itemBuilder: (context, index) {
                  return CommonTransaction(
                    image: 'assets/images/products/tomi_dogfood.png',
                    title: "Tommy's Food",
                    subtitle: 'Food for Tommy',
                    price: '100',
                    dateTime: 'Today, 10:00 AM',
                  );
                },
              )
            ],
          ),
          TransactionSection(
            title: 'Yesterday',
            items: [
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: 10,
                separatorBuilder: (context, index) => const Divider(
                  height: 10,
                ),
                itemBuilder: (context, index) {
                  return CommonTransaction(
                    image: 'assets/images/products/tomi_dogfood.png',
                    title: "Tommy's Food",
                    subtitle: 'Food for Tommy',
                    price: '100',
                    dateTime: 'Yesterday, 10:00 AM',
                  );
                },
              )
            ],
            content: PriceUnit(
              price: '1000',
              sign: '-',
            ),
          )
        ],
      ),
    );
  }
}

class TransactionSection extends MultiSliver {
  TransactionSection({
    required String title,
    required Widget content,
    required List<Widget> items,
    super.key,
    Color headerColor = Colors.white,
    Color titleColor = Colors.black,
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
