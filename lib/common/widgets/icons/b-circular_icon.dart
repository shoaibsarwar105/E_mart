import 'package:beautybonenza/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


import '../../../utils/constant/colors.dart';
import '../../../utils/constant/sizes.dart';

class BCircularIcon extends StatelessWidget {
  const BCircularIcon({
    super.key,

    this.width,
    this.height,
    this.size=BSizes.lg,
     required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null ? backgroundColor! : BHelperFunction.isDark(context) ?
             BColors.black.withOpacity(0.9)
            : BColors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon:  Icon(icon,color: color,size: size,),
      ),
    );
  }
}
