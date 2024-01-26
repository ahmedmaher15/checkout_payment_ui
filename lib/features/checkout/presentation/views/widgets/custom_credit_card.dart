import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment_app/core/widgets/custom_button.dart';

class CustomCreditCart extends StatefulWidget {
  const CustomCreditCart({super.key, required this.formKey, required this.autoValidateMode});

  final GlobalKey<FormState> formKey;
  final AutovalidateMode autoValidateMode;
  @override
  State<CustomCreditCart> createState() => _CustomCreditCartState();
}

class _CustomCreditCartState extends State<CustomCreditCart> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: showBackView,
            isHolderNameVisible: true,
            onCreditCardWidgetChange: (value) {}),
        CreditCardForm(
          isHolderNameVisible: true,
          autovalidateMode: widget.autoValidateMode,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (creditCardModel) {
            cardHolderName = creditCardModel.cardHolderName;
            expiryDate = creditCardModel.expiryDate;
            cvvCode = creditCardModel.cvvCode;
            cardNumber = creditCardModel.cardNumber;
            showBackView = creditCardModel.isCvvFocused;
            setState(() {});
          },
          formKey: widget.formKey,
        ),
      ],
    );
  }
}
