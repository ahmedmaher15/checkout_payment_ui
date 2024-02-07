import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/utils/api_keys.dart';
import 'package:payment_app/features/checkout/presentation/views/my_cat_view.dart';

main(){
   Stripe.publishableKey=ApiKeys.publishableKey;
  runApp(const CheckOutApp());
}
class CheckOutApp extends StatelessWidget {
  const CheckOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}
  //1-  Create PaymentIntent (amount ,currency) will receive an PaymentIntentObject
  //2- init payment sheet (paymentIntentClientSecret)
  //3- presentPaymentSheet()

