import 'package:beautybonenza/common/widgets/Images/b_rounded_image.dart';
import 'package:beautybonenza/common/widgets/appbar/appbar.dart';
import 'package:beautybonenza/common/widgets/products/products_cards/product_card_horizontal.dart';
import 'package:beautybonenza/common/widgets/text/section_heading.dart';
import 'package:beautybonenza/utils/constant/images.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesSection extends StatelessWidget {
  const SubCategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppbar(
        title: Text('Sports Shirts'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.defaultsSpace),
          child: Column(
            children: [
              /// Banner
              const BRoundedImage(
                imageUrl: BImages.promoBanner1,
                applyImageRadius: true,
                width: double.infinity,
              ),
              const SizedBox(height: BSizes.spaceBtwSections,),



              /// sub categories
              Column(children: [
                /// heading
                BSectionHeading(title: 'Sports shirt',onPressed: (){},),
                const SizedBox(height: BSizes.spaceBtwItems /2 ,),


                SizedBox(height: 120,
                  child: ListView.separated(itemCount: 4,
                    scrollDirection: Axis.horizontal,

                      separatorBuilder: (context,index)=>const SizedBox(width: BSizes.spaceBtwItems,),
                      itemBuilder: (context,index)=> const BProductCardHorizontal( )),
                )



              ],),
              const SizedBox(height: BSizes.spaceBtwSections,),

              /// 2- sub categories
              Column(children: [
                /// heading
                BSectionHeading(title: 'Watch Items',onPressed: (){},),
                const SizedBox(height: BSizes.spaceBtwItems /2 ,),


                SizedBox(height: 120,
                  child: ListView.separated(itemCount: 4,
                    scrollDirection: Axis.horizontal,

                      separatorBuilder: (context,index)=>const SizedBox(width: BSizes.spaceBtwItems,),
                      itemBuilder: (context,index)=> const BProductCardHorizontal( )),
                )



              ],),
              const SizedBox(height: BSizes.spaceBtwSections,),

              /// 3- sub categories
              Column(children: [
                /// heading
                BSectionHeading(title: 'Electronics',onPressed: (){},),
                const SizedBox(height: BSizes.spaceBtwItems /2 ,),


                SizedBox(height: 120,
                  child: ListView.separated(itemCount: 4,
                    scrollDirection: Axis.horizontal,

                      separatorBuilder: (context,index)=>const SizedBox(width: BSizes.spaceBtwItems,),
                      itemBuilder: (context,index)=> const BProductCardHorizontal( )),
                )



              ],)





            ],
          ),
        ),
      ),
    );
  }
}
