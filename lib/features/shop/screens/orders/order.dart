import 'package:beautybonenza/common/widgets/appbar/appbar.dart';
import 'package:beautybonenza/features/shop/screens/orders/widgets/orders_list.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      /// Appbar
      appBar: BAppbar(title: Text("My Orders",style: Theme.of(context).textTheme.headlineSmall,),showBackArrow: true,),
      body: const Padding(padding: EdgeInsets.all(BSizes.defaultsSpace),

      /// Orders
        child: BOrderListItems(),


      ),
      /// orders



    );
  }
}
