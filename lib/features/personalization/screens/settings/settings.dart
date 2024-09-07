import 'package:beautybonenza/common/custom_shapes/Containers/primary_header_container.dart';
import 'package:beautybonenza/common/widgets/appbar/appbar.dart';
import 'package:beautybonenza/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:beautybonenza/common/widgets/text/section_heading.dart';
import 'package:beautybonenza/features/personalization/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constant/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BPrimaryHeaderContainer(
                child: Column(
              children: [
                BAppbar(
                  title: Text(
                    'Account ',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: Colors.white),
                  ),
                ),

                /// -- User Profile card
                 BUserProfileTile(onPressed: (){Get.to(const ProfileScreen());},),
                const SizedBox(
                  height: BSizes.spaceBtwSections,
                )
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(BSizes.defaultsSpace),
              child: Column(
                children: [
                  /// --Account Settings
                  const BSectionHeading(
                    title: "Account Setting",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: BSizes.spaceBtwItems,
                  ),

                  BSettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Addresses",
                    subTitle: "Set shopping delivery address",
                    onTap: () {},
                  ),
                  BSettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subTitle: "Add, remove products and move to check out.",
                    onTap: () {},
                  ),
                  BSettingMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subTitle: "In-process and Completed orders.",
                    onTap: () {},
                  ),
                  BSettingMenuTile(
                    icon: Iconsax.bank,
                    title: "Bank Account",
                    subTitle: "Withdraw balance to registered bank account.",
                    onTap: () {},
                  ),
                  BSettingMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subTitle: "List of all the discounted coupons.",
                    onTap: () {},
                  ),
                  BSettingMenuTile(
                    icon: Iconsax.notification,
                    title: "Notifications",
                    subTitle: "Set any kind of notification message.",
                    onTap: () {},
                  ),
                  BSettingMenuTile(
                    icon: Iconsax.security_card,
                    title: "Account Privacy",
                    subTitle: "Manage data usage and connected accounts.",
                    onTap: () {},
                  ),

                  /// App Settings
                  const SizedBox(
                    height: BSizes.spaceBtwSections,
                  ),

                  const BSectionHeading(
                    title: "App Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: BSizes.spaceBtwItems,
                  ),
                  const BSettingMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subTitle: 'Upload Data to your Cloud FireBase.'),
                  BSettingMenuTile(
                      icon: Iconsax.location,
                      title: 'Geolocation',
                      subTitle: 'Set recommendation based on location.',
                  trailing: Switch(value: true, onChanged: (bool value) {  },),) ,
                  BSettingMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Safe Mode',
                      subTitle: 'Search result is safe for all ages.',
                     trailing:  Switch(value: false, onChanged: (bool value) {  },)) ,
                  BSettingMenuTile(
                      icon: Iconsax.image,
                      title: 'HD Image Quality',
                      subTitle: 'Set image quality to be seen.',
                  trailing: Switch(value: false, onChanged: (bool value) {  },),),

                  /// Logout Button
                  const SizedBox(height: BSizes.spaceBtwSections,),
                  SizedBox(width: double.infinity,child: OutlinedButton(onPressed: () {  }, child: const Text("Logout"),),),
                  const SizedBox(height: BSizes.spaceBtwSections*2.5,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
