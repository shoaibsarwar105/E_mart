
import 'package:beautybonenza/features/personalization/screens/settings/settings.dart';
import 'package:beautybonenza/features/shop/screens/home_screen/home_screen.dart';
import 'package:beautybonenza/features/shop/screens/store/store_screen.dart';
import 'package:beautybonenza/features/shop/screens/wishlist/wishlist.dart';
import 'package:beautybonenza/utils/constant/colors.dart';
import 'package:beautybonenza/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    //init the home_controller
    var controller = Get.put(Navigation_controller());
    var darkMode=BHelperFunction.isDark(context);
    // var navbarItem = [
    //   const  BottomNavigationBarItem(
    //       icon: Icon(
    //         Icons.home,
    //         weight: 26,
    //       ),
    //       label: 'HOME'),
    //   const BottomNavigationBarItem(
    //       icon: Icon(
    //         Iconsax.shop,
    //         weight: 26,
    //       ),
    //       label: 'shop'),
    //   const BottomNavigationBarItem(
    //       icon: Icon(
    //         Iconsax.heart,
    //         weight: 26,
    //       ),
    //       label: 'Wishlist'),
    //   const BottomNavigationBarItem(
    //       icon: Icon(
    //         Iconsax.user,
    //         weight: 26,
    //       ),
    //       label: "profile"),
    // ];
    // var navBody = [
    //  const  HomeScreen(),
    //   Container(
    //     color: Colors.purple,
    //
    //   ),
    //   Container(
    //     color: Colors.red,
    //
    //   ),
    //   Container(
    //     color: Colors.blueGrey,
    //   )
    // ];

    return Scaffold(
        bottomNavigationBar: Obx(
          ()=> NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index)=>controller.selectedIndex.value=index,
            backgroundColor: darkMode ? BColors.black:BColors.white,
            indicatorColor: darkMode ? BColors.white.withOpacity(0.1):BColors.black.withOpacity(0.1),
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
              NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile')
            ],
          ),
        ),
        body:Obx((){ return controller.Screens[controller.selectedIndex.value];})
        // Column(
        //   children: [
        //     Obx(() {
        //       return Expanded(
        //         child: navBody.elementAt(controller.currentNavIndex.value),);
        //     }),
        //   ],
        // ),
        // bottomNavigationBar: Obx(() {
        //   return BottomNavigationBar(unselectedItemColor: Colors.grey,
        //     currentIndex: controller.currentNavIndex.value,
        //     items: navbarItem,
        //     backgroundColor: Colors.white,
        //     type: BottomNavigationBarType.fixed,
        //     selectedItemColor: Colors.lightBlue[900],
        //     selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        //     onTap: (Value) {
        //
        //       controller.currentNavIndex.value = Value;
        //     },
        //   );
        // }),
        );
  }
}

class Navigation_controller extends GetxController {
  var selectedIndex = 0.obs;
  final Screens = [
   const HomeScreen(),
   const StoreScreen(),
    const FavouriteScreen(),
   const SettingsScreen()
  ];
}
