import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/core/widgets/custom_button.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/presentation/manger/payment_cubit.dart';
import 'package:payment_app/features/checkout/presentation/views/thank_you_view.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess){
          print('we come here');
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const ThankYouView(),));
        }
        if(state is PaymentFailure){
          Navigator.of(context).pop();
          SnackBar snackBar=SnackBar(content: Text(state.errFailure));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) => CustomButton(
        onTap: (){
          PaymentIntentInputModel paymentIntentInputModel=PaymentIntentInputModel(amount: '100',currency:'USD' );
          BlocProvider.of<PaymentCubit>(context).makePayment(paymentIntentInputModel: paymentIntentInputModel);
        },
          isLoading: state is PaymentLoading ? true : false, text: 'Continue'),
    );
  }
}
