import 'package:flutter/material.dart';
import 'package:genric_payment_gateway/core/theming/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Total", style: AppStyles.textStyle24blackSemiBold),
        Text("\$50.47", style: AppStyles.textStyle24blackSemiBold),
      ],
    );
  }
}
