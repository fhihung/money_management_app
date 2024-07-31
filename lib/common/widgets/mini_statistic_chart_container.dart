import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/app/app.dart';

class MiniStatisticChartContainer extends StatelessWidget {
  const MiniStatisticChartContainer({
    required this.spotData,
    required this.price,
    super.key,
    this.isLower = false,
  });

  final List<FlSpot> spotData;
  final bool isLower;
  final String price;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Expanded(
      child: IntrinsicHeight(
        child: Container(
          width: 130,
          padding: const EdgeInsets.all(AppSpaces.space5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: appColors.border7,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(AppSpaces.space6),
                child: isLower
                    ? Icon(
                        Iconsax.trend_down,
                        color: appColors.backgroundRed1,
                      )
                    : Icon(
                        Iconsax.trend_up,
                        color: appColors.backgroundSecondary1,
                      ),
              ),
              const SizedBox(
                height: AppSpaces.space4,
              ),
              Text(
                isLower ? 'Expenses' : 'Income',
                style: AppTextStyles.captionLg1,
              ),
              const SizedBox(
                height: AppSpaces.space2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PriceUnit(
                    price: price,
                    textStyle: AppTextStyles.bodyMd2.copyWith(
                      color: appColors.textBlackDarkVersion,
                    ),
                  ),
                  // Text(
                  //   ' + 10%',
                  //   style: AppTextStyles.captionXSm.copyWith(
                  //     color: appColors.textBlackDarkVersion,
                  //   ),
                  // ),
                ],
              ),
              const SizedBox(
                height: AppSpaces.space2,
              ),
              SizedBox(
                height: 50, // Adjust height as needed
                child: LineChart(
                  LineChartData(
                    gridData: const FlGridData(show: false),
                    titlesData: const FlTitlesData(
                      leftTitles: AxisTitles(),
                      bottomTitles: AxisTitles(),
                      topTitles: AxisTitles(),
                      rightTitles: AxisTitles(),
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    // clipData: const FlClipData.all(),
                    lineBarsData: [
                      LineChartBarData(
                        barWidth: 1,
                        // belowBarData: BarAreaData(
                        //   show: true,
                        //   color: isLower ? appColors.backgroundRed1.withOpacity(0.3) : appColors.backgroundGreen.withOpacity(0.3),
                        // ),
                        dotData: const FlDotData(show: false),
                        spots: spotData,
                        isCurved: true,
                        color: isLower
                            ? appColors.backgroundRed1
                            : appColors.backgroundGreen,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: AppSpaces.space4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
