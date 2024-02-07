import 'package:flutter/material.dart';
import 'package:payment_app/core/widgets/custom_button.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/payment_methods.dart';

import 'custom_button_bloc_consumer.dart';

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
          CustomButtonBlocConsumer()
        ],
      ),
    );
  }
}

