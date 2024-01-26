import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/core/widgets/custom_button.dart';
import 'package:payment_app/features/checkout/presentation/views/payment_details.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/cart_info_row.dart';
import 'package:payment_app/core/widgets/custom_appbar.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/payment_methods.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'My Cart',context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [

            Expanded(child: Image.asset('assets/svg/Group 6.png')),
            const SizedBox(
              height: 18,
            ),
            const OrderIfoItem(
                firstText: 'Order Subtotal', secondText: '\$42.97'),
            const SizedBox(
              height: 5,
            ),
            const OrderIfoItem(firstText: 'Discount', secondText: '\$0'),
            const SizedBox(
              height: 5,
            ),
            const OrderIfoItem(firstText: 'Shipping', secondText: '\$8'),

            const Divider(endIndent: 20, indent: 20, thickness: 2,height: 25,),
            const SizedBox(
              height: 5,
            ),
            const OrderIfoItem(
              firstText: 'Total',
              secondText: '\$50.97',
              firstStyles: Styles.textStyle24,
            ),
            const SizedBox(
              height: 15,
            ),
             CustomButton(text:  'Complete Payment',onTap: (){
              /* Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PaymentDetailsView(),));*/
               showModalBottomSheet(context: context, builder: (context) => const PaymentMethodBottomSheet(),);
             },),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }


}


class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16,),
          FittedBox(child: PaymentMethodsListView()),
          SizedBox(height: 30,),
          CustomButton(text: 'Continue')
        ],
      ),
    );
  }
}
