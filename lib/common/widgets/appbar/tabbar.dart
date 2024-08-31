
import 'package:beautybonenza/utils/device/device-utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class BTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If you want to add the background color to tabs you have to wrap them in Material widget
  /// To do that we need [PreferredSize]Widget and that's why created custom class.[PreferredSizeWidget]

  const BTabBar({
    super.key, required this.tabs,
  });
final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunction.isDark(context);
    return Material(
      color: dark? BColors.black: BColors.white,
      child: TabBar(
        isScrollable: true,
        indicatorColor: BColors.primary,
        unselectedLabelColor: BColors.darkGrey,
        labelColor: BHelperFunction.isDark(context)? BColors.white : BColors.primary,
        tabs: tabs,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(BDeviceUtils.getAppBarHeight());
}