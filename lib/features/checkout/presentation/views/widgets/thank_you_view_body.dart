import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/thank_you_card.dart';

import 'circle_icon.dart';
import 'custom_check_icon.dart';
import 'custom_dashed_line.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCard(),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            left: 28,
            right: 28,
            child: const CustomDashedLine(),
          ),
          const CircleIcon(
            left: -20,
          ),
          const CircleIcon(
            right: -20,
          ),
          const CustomCheckIcon()
        ],
      ),
    );
  }
}
