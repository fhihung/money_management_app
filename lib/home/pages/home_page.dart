import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/widgets/text_dropdown_button.dart';
import 'package:money_management_app/home/widgets/home_appbar.dart';

import '../../common/common.dart';
import '../../common/widgets/avatar_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late DropdownItem selectedValue;
  final List<DropdownItem> listWallet = [
    DropdownItem(
      title: 'John\'s áasad',
      widget: const AvatarTile(
        title: 'John\'s Walletaalsfdslkfnsladnflsalnf',
        subTitle: 'example@gmail.com',
      ),
    ),
    DropdownItem(
      title: 'Wallet 1',
      widget: const AvatarTile(
        title: 'Wallet 1',
        subTitle: 'Balance: \$1000',
      ),
    ),
    DropdownItem(
      title: 'Wallet 3',
      widget: const Row(
        children: [
          Icon(
            Iconsax.wallet,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Wallet 3',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    // Set the default selected value to the first wallet in the list
    selectedValue = listWallet[0];
  }

  // void _addWallet() {
  //   showDialog<void>(
  //     context: context,
  //     builder: (context) {
  //       var newWalletName = '';
  //       return AlertDialog(
  //         title: const Text('Add Wallet'),
  //         content: TextField(
  //           onChanged: (value) {
  //             newWalletName = value;
  //           },
  //           decoration: const InputDecoration(
  //             hintText: 'Enter wallet name',
  //           ),
  //         ),
  //         actions: [
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //             child: const Text('Cancel'),
  //           ),
  //           TextButton(
  //             onPressed: () {
  //               if (newWalletName.isNotEmpty) {
  //                 setState(() {
  //                   final newWallet = DropdownItem(
  //                     title: newWalletName,
  //                     widget: Row(
  //                       children: [
  //                         const Icon(
  //                           Iconsax.wallet,
  //                           color: Colors.white,
  //                         ),
  //                         const SizedBox(
  //                           width: 10,
  //                         ),
  //                         Text(
  //                           newWalletName,
  //                           style: const TextStyle(
  //                             color: Colors.white,
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   );
  //                   listWallet.add(newWallet);
  //                   selectedValue = newWallet;
  //                 });
  //               }
  //               Navigator.of(context).pop();
  //             },
  //             child: const Text('Add'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedContainer(
              child: Column(
                children: [
                  HomeAppBar(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hung's Wallet",
                          style: AppTextStyles.bodyMd1.copyWith(
                            color: appColors.textWhite,
                          ),
                        ),
                        // TextDropdownButton(
                        //   title: S.selectCountry,
                        //   selectedValue: selectedValue,
                        //   listValue: listWallet,
                        //   onChanged: (DropdownItem? value) {
                        //     setState(() {
                        //       if (value != null) {
                        //         selectedValue = value;
                        //       } else {
                        //         _addWallet();
                        //       }
                        //     });
                        //   },
                        //   onAddWallet: _addWallet,
                        // ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: AppSpaces.space10,
                      bottom: AppSpaces.space3,
                    ),
                    child: ProductPrice(
                      isLarge: true,
                      price: '1000',
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
                          SizedBox(
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
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VerticalImageText(
                  isIcon: true,
                  icon: Icon(
                    Iconsax.arrow_up_3,
                    color: appColors.backgroundPrimary,
                  ),
                  text: 'Send',
                ),
                VerticalImageText(
                  isIcon: true,
                  icon: Icon(
                    Iconsax.arrow_down,
                    color: appColors.backgroundPrimary,
                  ),
                  text: 'Receive',
                ),
                VerticalImageText(
                  isIcon: true,
                  icon: Icon(
                    Iconsax.arrow_swap,
                    color: appColors.backgroundPrimary,
                  ),
                  text: 'Swap',
                ),
                VerticalImageText(
                  isIcon: true,
                  icon: Icon(
                    Iconsax.more,
                    color: appColors.backgroundPrimary,
                  ),
                  text: 'More',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
