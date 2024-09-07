import 'package:beautybonenza/common/widgets/Images/b_circular_image.dart';
import 'package:beautybonenza/common/widgets/appbar/appbar.dart';
import 'package:beautybonenza/common/widgets/text/section_heading.dart';
import 'package:beautybonenza/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:beautybonenza/utils/constant/images.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppbar(
        showBackArrow: true,
        title: Text("Profile"),
      ),

      /// --body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.defaultsSpace),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                /// -- Profile Picture
                const BCircularImage(
                  image: BImages.user,
                  width: 80,
                  height: 80,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text('Change Profile Picture')),

                /// -- Details
                const SizedBox(
                  height: BSizes.spaceBtwSections / 2,
                ),
                const Divider(),
                const SizedBox(
                  height: BSizes.spaceBtwItems,
                ),
                const BSectionHeading(
                  title: 'Profile Information',
                  showActionButton: false,
                ),
                const SizedBox(
                  height: BSizes.spaceBtwItems,
                ),

                BProfileMenu(
                  onPressed: () {},
                  title: 'Name',
                  value: 'Dream Life',
                ),
                BProfileMenu(
                  onPressed: () {},
                  title: 'Username',
                  value: 'Dream_Life',
                ),

                const SizedBox(
                  height: BSizes.spaceBtwItems,
                ),
                const Divider(),
                const SizedBox(
                  height: BSizes.spaceBtwItems,
                ),

                /// --Heading Personal Information
                const BSectionHeading(
                  title: 'Personal Information',
                  showActionButton: false,
                ),
                const SizedBox(
                  height: BSizes.spaceBtwItems,
                ),

                BProfileMenu(
                  onPressed: () {},
                  title: 'User ID',
                  value: '45678',
                  icon: Iconsax.copy,
                ),
                BProfileMenu(
                  onPressed: () {},
                  title: 'E-mail',
                  value: 'Client@gmail.com',
                ),
                BProfileMenu(
                  onPressed: () {},
                  title: 'Phone Number',
                  value: '+92 3084739991',
                ),
                BProfileMenu(
                  onPressed: () {},
                  title: 'Gender',
                  value: 'Male',
                ),
                BProfileMenu(
                  onPressed: () {},
                  title: 'Date of Birth',
                  value: '05 March 2003',
                ),
                const Divider(),
                const SizedBox(
                  height: BSizes.spaceBtwItems,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Close Account ',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
