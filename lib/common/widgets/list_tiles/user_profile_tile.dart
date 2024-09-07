import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/images.dart';
import '../Images/b_circular_image.dart';

class BUserProfileTile extends StatelessWidget {
  const BUserProfileTile({
    super.key, this.onPressed,
  });
   final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const BCircularImage(
          image: BImages.user, height: 50, width: 50, padding: 0),
      title: Text(
        "User Name",
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: Colors.white),
      ),
      subtitle: Text(
        "Client@gmail.com",
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: Colors.white),
      ),trailing: IconButton(icon: const Icon(Iconsax.edit,color: BColors.white ,), onPressed: onPressed,),
    );
  }
}