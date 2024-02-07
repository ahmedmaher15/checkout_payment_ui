import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.text, this.onTap,  this.isLoading=false,
  });
  final String text;
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        width: 350,
        height: 60,
        decoration: ShapeDecoration(
          color: Color(0xFF34A853),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child:  Center(
          child:isLoading?const CircularProgressIndicator(): Text(
              text,
              textAlign: TextAlign.center,
              style: Styles.textStyle22),
        ),
      ),
    );
  }
}
