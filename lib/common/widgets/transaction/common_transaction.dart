import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';

class CommonTransaction extends StatelessWidget {
  const CommonTransaction({
    this.image,
    super.key,
    this.title,
    this.subtitle,
    this.price,
    this.dateTime,
  });

  final String? image;
  final String? title;
  final String? subtitle;
  final String? price;
  final String? dateTime;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Padding(
      padding: const EdgeInsets.only(
        right: AppSpaces.space3,
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: appColors.backgroundPrimaryLight8_2,
              borderRadius: BorderRadius.circular(99),
              border: Border.all(
                color: appColors.backgroundPrimaryLight8_3,
                width: AppSpaces.space1,
              ),
            ),
            padding: const EdgeInsets.all(AppSpaces.space3),
            child: image != null
                ? Image.asset(
                    image!,
                    width: 24,
                    height: 24,
                  )
                : const SizedBox(
                    width: 24,
                    height: 24,
                  ),
          ),
          const SizedBox(width: AppSpaces.space3),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title ?? '',
                      style: AppTextStyles.bodySm2.copyWith(
                        color: appColors.textBlackDarkVersion,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    if (price != null)
                      PriceUnit(
                        price: price!,
                        textStyle: AppTextStyles.bodySm2.copyWith(
                          color: appColors.textBlackDarkVersion,
                        ),
                      )
                    else
                      const SizedBox(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      subtitle ?? '',
                      style: AppTextStyles.captionSm.copyWith(
                        color: appColors.textGray3,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      dateTime ?? '',
                      style: AppTextStyles.captionSm.copyWith(
                        color: appColors.textGray3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
