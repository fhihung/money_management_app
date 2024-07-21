import 'package:boxy/flex.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/containers/background_container.dart';
import 'package:money_management_app/common/widgets/stack_widget.dart';
import 'package:money_management_app/common/widgets/vertical_text_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: appColors.backgroundPrimary,
        child: const Icon(
          Iconsax.add,
          color: Colors.white,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: const [
              NotificationWidget(),
            ],
            backgroundColor: appColors.backgroundPrimary,
            title: Text(
              "Hung's Wallet",
              style: AppTextStyles.bodyLg.copyWith(
                color: appColors.textWhite,
              ),
            ),
            centerTitle: false,
            floating: true,
            pinned: true,
            snap: true,
            expandedHeight: 250,
            flexibleSpace: OverflowBar(
              children: [
                _heading(),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: BoxyColumn(
                children: [
                  const SizedBox(
                    height: AppSpaces.space8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      VerticalTextButton(
                        icon: Icon(
                          Iconsax.arrow_up_3,
                          color: appColors.backgroundPrimary,
                        ),
                        text: 'Send',
                        onPressed: () {},
                      ),
                      VerticalTextButton(
                        onPressed: () {},
                        icon: Icon(
                          Iconsax.arrow_down,
                          color: appColors.backgroundPrimary,
                        ),
                        text: 'Receive',
                      ),
                      VerticalTextButton(
                        onPressed: () {},
                        icon: Icon(
                          Iconsax.arrow_swap,
                          color: appColors.backgroundPrimary,
                        ),
                        text: 'Swap',
                      ),
                      VerticalTextButton(
                        onPressed: () {},
                        icon: Icon(
                          Iconsax.more,
                          color: appColors.backgroundPrimary,
                        ),
                        text: 'More',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSpaces.space11,
                  ),
                  const StackWidget(
                    icon: Iconsax.note,
                    subtitle: 'Your account is currently empty',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _heading() {
    final appColors = context.appColors;
    return BackgroundContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: AppSpaces.space13,
              bottom: AppSpaces.space3,
            ),
            child: PriceUnit(
              price: '1000',
            ),
          ),
          Text(
            'Visa Card',
            style: AppTextStyles.bodyXLg.copyWith(
              color: appColors.textWhite,
            ),
          ),
          const SizedBox(
            height: AppSpaces.space7,
          ),
          Container(
            decoration: BoxDecoration(
              color: appColors.backgroundWhite2DarkVersion,
              borderRadius: BorderRadius.circular(99),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpaces.space6,
                vertical: AppSpaces.space4,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Iconsax.trend_up,
                    color: appColors.backgroundGreen,
                  ),
                  const SizedBox(
                    width: AppSpaces.space4,
                  ),
                  Text(
                    '+ 10%',
                    style: AppTextStyles.bodySm2.copyWith(
                      color: appColors.textBlackDarkVersion,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
