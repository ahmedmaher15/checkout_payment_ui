import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/core/utils/styles.dart';

import 'cart_info_row.dart';
import 'master_card_widget.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 65,left: 23,right: 23),
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Column(
        children: [
          const Text(
            'Thank you!',
            textAlign: TextAlign.center,
            style: Styles.textStyle25,
          ),
          const SizedBox(
            height: 2,
          ),
          const Text(
            'Your transaction was successful',
            textAlign: TextAlign.center,
            style: Styles.textStyle20,
          ),
          const SizedBox(
            height: 42,
          ),
           OrderIfoItem(
            firstText: 'Date',
            secondText: '01/24/2023',
            secondStyles: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
           OrderIfoItem(
            firstText: 'Time',
            secondText: '10:15 AM',
            secondStyles: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600),

          ),
          const SizedBox(
            height: 20,
          ),
           OrderIfoItem(
            firstText: 'To',
            secondText: 'Sam Louis',
            secondStyles: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 320,
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 2,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFFC6C6C6),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const OrderIfoItem(
            firstText: 'Total',
            secondText: '\$50.97',
            firstStyles: Styles.textStyle24,
          ),
          const SizedBox(
            height: 30,
          ),
          const MasterCard(),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/svg/SVGRepo.svg'),
              Container(
                width: 113,
                height: 58,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.50, color: Color(0xFF34A853)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text(
                    'PAID',
                    textAlign: TextAlign.center,
                    style: Styles.textStyle24.copyWith(color: const Color(0xFF34A853)),
                  ),
                ),
              )
            ],
          ),
           SizedBox(
            height: ((MediaQuery.sizeOf(context).height * .2 + 20)/2)-29,
          ),
        ],
      ),
    );
  }
}
