import 'package:payment_app/core/utils/api_service.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  final ApiService apiService=ApiService();
  PaymentIntentModel createPaymentInitent(PaymentIntentModel paymentIntentModel){
    apiService.post(body: paymentIntentModel, url: 'https://api.stripe.com/v1/payment_intents', token: token)
  }
}