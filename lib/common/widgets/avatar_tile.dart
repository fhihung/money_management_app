import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';

class AvatarTile extends StatelessWidget {
  const AvatarTile({
    required this.title,
    required this.subTitle,
    super.key,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    final appColor = context.appColors;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: appColor.backgroundGray,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppTextStyles.captionSm.copyWith(
                  color: appColor.textBlackDarkVersion,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                subTitle,
                style: AppTextStyles.captionXSm.copyWith(
                  color: appColor.textGray2,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
