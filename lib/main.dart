import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/my_cat_view.dart';

main(){
  runApp(CheckOutApp());
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
