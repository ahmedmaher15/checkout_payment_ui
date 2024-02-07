import 'package:dartz/dartz.dart';
import 'package:payment_app/core/errors/faliurs.dart';
import 'package:payment_app/core/utils/stripe_service.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/data/repos/check_out_repo.dart';

class CheckOutRepoImpl extends CheckOutRepo{
  final StripeService stripeService=StripeService();
  @override
  Future<Either<Failure, void>> makePayment({required PaymentIntentInputModel paymentIntentInputModel}) async {
   try{
     await stripeService.makePayment(paymentIntentInputModel: paymentIntentInputModel);
     return right(null);
   }catch(e){
     return left(ServerFailure(errMessage: e.toString()));
   }
  }
  
}