import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:money_management_app/app/app.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
    this.title,
    this.showBackButton = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
    this.centerTitle,
  });

  final Widget? title;
  final bool? centerTitle;
  final bool showBackButton;
  final SvgPicture? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.md,
      ),
      child: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leadingWidth: 36,
        leading: showBackButton
            ? IconButton(
                icon: leadingIcon ??
                    Assets.icons.linear.svg.arrowLeft2.svg(
                      colorFilter: ColorFilter.mode(
                        context.appColors.textBlackDarkVersion,
                        BlendMode.srcIn,
                      ),
                    ),
                onPressed: leadingOnPressed ??
                    () {
                      Navigator.pop(context);
                    },
              )
            : null,
        title: DefaultTextStyle(
          style: AppTextStyles.bodyMd2.copyWith(
            color: context.appColors.textBlackDarkVersion,
          ),
          child: title ?? const SizedBox.shrink(),
        ),
        centerTitle: centerTitle,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
