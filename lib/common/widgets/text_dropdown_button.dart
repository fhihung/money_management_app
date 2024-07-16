import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/utils/utils.dart';

// Wrapper class to hold the widget and its title
class DropdownItem {
  DropdownItem({required this.title, required this.widget});
  final String title;
  final Widget widget;
}

class TextDropdownButton extends StatefulWidget {
  const TextDropdownButton({
    required this.selectedValue,
    required this.listValue,
    required this.onChanged,
    required this.title,
    required this.onAddWallet,
    super.key,
  });

  final DropdownItem? selectedValue;
  final List<DropdownItem> listValue;
  final ValueChanged<DropdownItem?> onChanged;
  final String title;
  final VoidCallback onAddWallet;

  @override
  State<TextDropdownButton> createState() => _TextDropdownButtonState();
}

class _TextDropdownButtonState extends State<TextDropdownButton> {
  bool isDropdownOpen = false;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: DropdownButton2<DropdownItem>(
        dropdownStyleData: DropdownStyleData(
          width: MediaQuery.of(context).size.width * 0.6,
          elevation: 0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: appColors.textWhite,
          ),
        ),
        underline: Container(),
        iconStyleData: IconStyleData(
          openMenuIcon: Icon(
            Iconsax.arrow_up_2,
            color: appColors.textWhite,
          ),
          icon: Icon(
            Iconsax.arrow_down_1,
            color: appColors.textWhite,
          ),
        ),
        isDense: true,
        value: widget.selectedValue,
        onChanged: (DropdownItem? newValue) {
          if (newValue == null) {
            widget.onAddWallet();
          } else {
            widget.onChanged(newValue);
          }
          setState(() {
            isDropdownOpen = false;
          });
        },
        onMenuStateChange: (isOpen) {
          setState(() {
            isDropdownOpen = isOpen;
          });
        },
        selectedItemBuilder: (BuildContext context) {
          return widget.listValue.map<Widget>((DropdownItem item) {
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                item.title,
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList();
        },
        items: [
          ...widget.listValue.map((DropdownItem item) {
            return DropdownMenuItem<DropdownItem>(
              value: item,
              child: item.widget,
            );
          }),
          DropdownMenuItem<DropdownItem>(
            value: null,
            child: Row(
              children: [
                Icon(
                  Iconsax.add,
                  color: appColors.textBlackDarkVersion,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Add Wallet',
                  style: AppTextStyles.bodySm2.copyWith(
                    color: appColors.textBlackDarkVersion,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
