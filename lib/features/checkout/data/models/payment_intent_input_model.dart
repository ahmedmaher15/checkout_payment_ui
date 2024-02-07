class PaymentIntentInputModel
{
  final String amount;
  final String currency;

  PaymentIntentInputModel({required this.amount, required this.currency});
  toJason(){
    return {
      'amount':'${amount}00',
      'currency':currency
    };
  }
}