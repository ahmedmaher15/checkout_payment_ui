import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:payment_app/core/widgets/custom_appbar.dart';
import 'package:payment_app/core/widgets/custom_button.dart';
import 'package:payment_app/features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/payment_methods.dart';

class PaymentDetailsView extends StatefulWidget {
  const PaymentDetailsView({super.key});

  @override
  State<PaymentDetailsView> createState() => _PaymentDetailsViewState();
}

class _PaymentDetailsViewState extends State<PaymentDetailsView> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Payment Details',context: context),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: PaymentMethodsListView(),
          ),
          SliverToBoxAdapter(
            child: CustomCreditCart(
              formKey: formKey,
              autoValidateMode: autoValidateMode,
            ),
          ),
          SliverFillRemaining(
            fillOverscroll: false,
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: CustomButton(
                  text: 'Payment',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      log('payment');
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ThankYouView(),));
                    } else {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ThankYouView(),));
                      autoValidateMode = AutovalidateMode.always;
                      setState(() {});

                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
