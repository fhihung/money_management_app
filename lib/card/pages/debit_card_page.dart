import 'package:flutter/material.dart';
import 'package:mesh_gradient/mesh_gradient.dart';
import 'package:money_management_app/app/app.dart';

class DebitCardPage extends StatelessWidget {
  const DebitCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpaces.space6,
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: AppSpaces.space7,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: appColors.backgroundPrimary,
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSpaces.space5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.icons.linear.svg.addCircle.svg(
                        colorFilter: ColorFilter.mode(
                          appColors.textPrimary,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: AppSpaces.space3),
                      Text(
                        'Add Debit Card',
                        style: AppTextStyles.buttonSm.copyWith(
                          color: appColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: AppSpaces.space7,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  AppSpaces.space7,
                ),
                child: Container(
                  constraints: const BoxConstraints(
                    minHeight: 190,
                  ),
                  child: AnimatedMeshGradient(
                    colors: const [
                      Color(0xFF86AFF5),
                      Color(0xFF192DD9),
                      Color(0xFF395DDE),
                      Color(0xFF4A6DE1),
                    ],
                    options: AnimatedMeshGradientOptions(),
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpaces.space7),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PriceUnit(
                                price: '1000',
                                textStyle: AppTextStyles.headlineLg
                                    .copyWith(color: appColors.textWhite),
                              ),
                              const SizedBox(
                                width: AppSpaces.space6,
                              ),
                              Assets.icons.bold.svg.visa.svg(
                                colorFilter: ColorFilter.mode(
                                  appColors.textWhite,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: AppSpaces.space6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Number',
                                    style: AppTextStyles.bodyMd2.copyWith(
                                      color: appColors.textWhite,
                                    ),
                                  ),
                                  Text(
                                    '**** **** **** 1234',
                                    style: AppTextStyles.bodySm1.copyWith(
                                      color: appColors.textWhite,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Exp',
                                    style: AppTextStyles.bodyMd2.copyWith(
                                      color: appColors.textWhite,
                                    ),
                                  ),
                                  Text(
                                    '02/12',
                                    style: AppTextStyles.bodySm1.copyWith(
                                      color: appColors.textWhite,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
