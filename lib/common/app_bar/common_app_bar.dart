import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/utils/utils.dart';

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
  final IconData? leadingIcon;
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
        leading: showBackButton
            ? IconButton(
                icon: Icon(
                  leadingIcon ?? Iconsax.arrow_left_2,
                ),
                onPressed: leadingOnPressed ??
                    () {
                      // Get.back();
                    },
              )
            : leadingIcon != null
                ? IconButton(
                    icon: Icon(leadingIcon),
                    onPressed: leadingOnPressed ?? () {},
                  )
                : null,
        title: title,
        centerTitle: centerTitle,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
