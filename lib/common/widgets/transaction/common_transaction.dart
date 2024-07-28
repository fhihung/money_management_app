import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:money_management_app/app/app.dart';

class CommonTransaction extends StatelessWidget {
  const CommonTransaction({
    this.image,
    super.key,
    this.title,
    this.subtitle,
    this.price,
    this.dateTime,
    this.currencyUnit,
    this.categoryType,
  });

  final String? image;
  final String? title;
  final String? subtitle;
  final String? price;
  final String? dateTime;
  final String? currencyUnit;
  final int? categoryType;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Padding(
      padding: const EdgeInsets.only(
        bottom: AppSpaces.space3,
        top: AppSpaces.space3,
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
                ? SvgPicture.network(image!, width: 24, height: 24, placeholderBuilder: (
                    BuildContext context,
                  ) {
                    return Assets.icons.linear.svg.folderCross.svg(
                      width: 24,
                      height: 24,
                      colorFilter: ColorFilter.mode(
                        appColors.backgroundRed,
                        BlendMode.srcIn,
                      ),
                    );
                  })
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
                          color: categoryType == 1 ? appColors.textRed : appColors.textGreen,
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
