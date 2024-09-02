import 'package:beautybonenza/common/widgets/appbar/appbar.dart';
import 'package:beautybonenza/common/widgets/icons/b-circular_icon.dart';
import 'package:beautybonenza/common/widgets/layouts/grid_layout.dart';
import 'package:beautybonenza/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:beautybonenza/features/shop/screens/home_screen/home_screen.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAppbar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          BCircularIcon(
            icon: Iconsax.add,
            onPressed: () {
              Get.to(const HomeScreen());
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.defaultsSpace),
          child: Column(
            children: [
              BGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) {
                    return const BProductCardVertical();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
