import 'package:dartz/dartz.dart';
import 'package:payment_app/core/errors/faliurs.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model.dart';

abstract class CheckOutRepo{
  Future<Either<Failure,void>> makePayment({required PaymentIntentInputModel paymentIntentInputModel});
}

