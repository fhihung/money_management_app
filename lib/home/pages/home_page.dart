import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/containers/background_container.dart';
import 'package:money_management_app/common/widgets/mini_statistic_chart_container.dart';
import 'package:money_management_app/common/widgets/stack_widget.dart';
import 'package:money_management_app/common/widgets/transaction/common_transaction.dart';
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: const [
              NotificationWidget(),
            ],
            backgroundColor: appColors.gradientPrimary2,
            title: Text(
              "Hung's Wallet",
              style: AppTextStyles.bodyLg.copyWith(
                color: appColors.textWhite,
              ),
            ),
            automaticallyImplyLeading: false,
            centerTitle: false,
            floating: true,
            pinned: true,
            snap: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              background: _heading(), // Keep background as required
            ),
          ),
          _buildBody(),
        ],
      ),
    );
  }

  Widget _buildBody() {
    final appColors = context.appColors;

    // Sample data for mini charts
    final miniChartSpots1 = <FlSpot>[
      const FlSpot(0, 1),
      const FlSpot(1, 2),
      const FlSpot(2, 1.5),
      const FlSpot(3, 3),
    ];

    return SliverToBoxAdapter(
      child: Column(
        children: [
          const SizedBox(
            height: AppSpaces.space8,
          ),
          _buildFunctionButton(),
          const SizedBox(
            height: AppSpaces.space11,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildOverview(miniChartSpots1),
              const SizedBox(
                height: AppSpaces.space11,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpaces.space6,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Transaction',
                          style: AppTextStyles.bodyMd1.copyWith(
                            color: appColors.textBlackDarkVersion,
                          ),
                        ),
                        Image.asset(
                          Assets.icons.regular.sortDesc.path,
                          width: 24,
                          height: 24,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSpaces.space8,
                    ),
                    ListView.separated(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      separatorBuilder: (context, index) => const Divider(
                        height: 10,
                      ),
                      itemBuilder: (context, index) {
                        return CommonTransaction(
                          image: Assets.images.products.tomiDogfood.path,
                          title: "Tommy's Food",
                          subtitle: 'Food for Tommy',
                          price: '100',
                          dateTime: 'Today, 10:00 AM',
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 200,
          )
        ],
      ),
    );
  }

  Widget _buildFunctionButton() {
    final appColors = context.appColors;
    return Row(
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
    );
  }

  Widget _buildEmptyState() {
    return const StackWidget(
      icon: Iconsax.note,
      subtitle: 'Your account is currently empty',
    );
  }

  Widget _heading() {
    final appColors = context.appColors;
    return BackgroundContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: AppSpaces.space13,
              bottom: AppSpaces.space3,
            ),
            child: PriceUnit(
              price: '1000',
              textStyle: AppTextStyles.displaySm.copyWith(
                color: appColors.textWhite,
              ),
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

  Widget _buildOverview(List<FlSpot> spotData) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpaces.space6,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Overview', style: AppTextStyles.bodyMd1),
          const SizedBox(
            height: AppSpaces.space4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MiniStatisticChartContainer(
                spotData: spotData,
              ),
              const SizedBox(
                width: AppSpaces.space5,
              ),
              MiniStatisticChartContainer(
                spotData: spotData,
                isLower: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
