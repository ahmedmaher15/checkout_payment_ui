import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class OrderIfoItem extends StatelessWidget {
  const OrderIfoItem(
      {super.key,
        required this.firstText,
        required this.secondText,
        this.firstStyles, this.secondStyles});

  final String firstText;
  final String secondText;
  final TextStyle? firstStyles;
  final TextStyle? secondStyles;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          firstText,
          style: firstStyles ?? Styles.textStyle18,
        ),
        const Spacer(),
        Text(
          secondText,
          style: secondStyles ?? Styles.textStyle18,
        )
      ],
    );
  }
}
