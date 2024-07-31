import 'package:flutter/material.dart';
import 'package:mesh_gradient/mesh_gradient.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/text_field/common_text_field.dart';

class AddNewCardPage extends StatefulWidget {
  const AddNewCardPage({super.key});

  @override
  State<AddNewCardPage> createState() => _AddNewCardPageState();
}

class _AddNewCardPageState extends State<AddNewCardPage> {
  late TextEditingController cardNumbercontroller;

  @override
  void initState() {
    cardNumbercontroller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Scaffold(
      appBar: CommonAppBar(
        showBackButton: true,
        title: const Text('Add New Card'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: AppSpaces.space),
            child: Assets.icons.linear.svg.scanner.svg(),
          ),
        ],
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpaces.space6,
        ),
        child: Column(
          children: [
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
                  colors: [
                    appColors.backgroundGray,
                    appColors.backgroundGray2,
                    appColors.backgroundGray1,
                    appColors.backgroundGray5,
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
                            const SizedBox(
                              width: AppSpaces.space6,
                            ),
                            Assets.icons.linear.svg.card.svg(
                              width: 40,
                              height: 40,
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
                                  style: AppTextStyles.captionSm.copyWith(
                                    color: appColors.textWhite,
                                  ),
                                ),
                                const SizedBox(
                                  height: AppSpaces.space4,
                                ),
                                Text(
                                  '____ ____ ____ ____',
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
                                  style: AppTextStyles.captionSm.copyWith(
                                    color: appColors.textWhite,
                                  ),
                                ),
                                const SizedBox(
                                  height: AppSpaces.space4,
                                ),
                                Text(
                                  '___ /___',
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
            const SizedBox(
              height: AppSpaces.space9,
            ),
            CommonTextField(
              controller: cardNumbercontroller,
              labelText: 'Card Number',
              prefixIcon: Assets.icons.linear.svg.card.svg(
                width: 20,
                height: 20,
                colorFilter: ColorFilter.mode(
                  appColors.textGray2,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
