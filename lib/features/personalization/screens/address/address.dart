import 'package:beautybonenza/common/widgets/appbar/appbar.dart';
import 'package:beautybonenza/features/personalization/screens/address/add_new_address.dart';
import 'package:beautybonenza/features/personalization/screens/address/widgets/single_address.dart';
import 'package:beautybonenza/utils/constant/colors.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const AddNewAddressScreen());
        },
        child: Icon(
          Iconsax.add,
          color: BColors.white,
        ),
        backgroundColor: BColors.primary,
      ),
      appBar: BAppbar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BSizes.defaultsSpace),
          child: Column(
            children: [

              BSingleAddress(selectedAddress: true), BSingleAddress(selectedAddress: false),



            ],
          ),
        ),
      ),
    );
  }
}
