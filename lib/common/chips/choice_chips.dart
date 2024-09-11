import 'package:beautybonenza/common/custom_shapes/Containers/circular_container.dart';
import 'package:beautybonenza/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../utils/constant/colors.dart';

class BChoiceChip extends StatelessWidget {
  const BChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor= BHelperFunction.getColor(text) != null;
    return ChoiceChip(
      label: isColor
          ? const SizedBox()
          :  Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: const TextStyle(color: true ? BColors.white : null),
      avatar:isColor
          ?  BCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: BHelperFunction.getColor(text)!)
          : null,
      shape:isColor ? const CircleBorder(): null,
      labelPadding: isColor ? const EdgeInsets.all(0): null,
      padding: isColor ? const EdgeInsets.all(0): null,

      backgroundColor:isColor ? BHelperFunction.getColor(text)! : null,
    );
  }
}
