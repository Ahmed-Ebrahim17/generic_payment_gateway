import 'package:flutter/material.dart';
import 'package:genric_payment_gateway/core/helpers/spacing.dart';
import 'package:genric_payment_gateway/core/theming/styles.dart';

class CreditCardShape extends StatelessWidget {
  const CreditCardShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          children: [
            Image.asset("assets/images/mastercard.png", height: 32, width: 32),
            horizentalSpace(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Credit Card", style: AppStyles.textStyleRegular18),
                  Text("Mastercard **78", style: AppStyles.textStyleRegular16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
