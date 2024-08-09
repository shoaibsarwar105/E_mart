import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../../../../utils/constant/images.dart';

class BHomeCategories extends StatelessWidget {
  const BHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return BVerticalImageText(image: BImages.shoes, title: 'shoes categories',onTap: (){},);
          }),
    );
  }
}