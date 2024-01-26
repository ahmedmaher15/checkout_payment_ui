import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key, required this.image, required this.isActive});

  final String image;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1,
              color:
                  isActive == true ? const Color(0xFF34A853) : Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color: isActive == true ? const Color(0xFF34A853) : Colors.white,
            blurRadius: 4,
            spreadRadius: 0,
          )
        ],
      ),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
              child: SvgPicture.asset(
            image,
            height: 24,
            fit: BoxFit.scaleDown,
          ))),
    );
  }
}
