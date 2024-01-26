import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/payment_card.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({
    super.key,
  });

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMethodsItem = const [
    'assets/svg/creditCard.svg',
    'assets/svg/paypal.svg',
    'assets/svg/applePay.svg'
  ];

  int activeIndex=0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodsItem.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: GestureDetector(
            onTap: (){
              setState(() {
                activeIndex=index;
              });
            },
            child: PaymentCard(
              isActive: activeIndex==index,
              image: paymentMethodsItem[index],
            ),
          ),
        ),
      ),
    );
  }
}
