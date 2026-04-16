import 'package:flutter/material.dart';
import 'package:genric_payment_gateway/core/helpers/spacing.dart';
import 'package:genric_payment_gateway/core/theming/styles.dart';

class TransactionResultDetailsItem extends StatelessWidget {
  const TransactionResultDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Thank you!", style: AppStyles.textStyle25blackmedium),
        Text(
          "Your transaction was successful",
          style: AppStyles.textStyleRegular20,
        ),
        verticalSpace(40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Date", style: AppStyles.textStyleRegular18),
            Text("16/04/2026", style: AppStyles.textStyle18Medium),
          ],
        ),
        verticalSpace(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Time", style: AppStyles.textStyleRegular18),
            Text("12:15 PM", style: AppStyles.textStyle18Medium),
          ],
        ),
        verticalSpace(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("To", style: AppStyles.textStyleRegular18),
            Text("Sam Smith", style: AppStyles.textStyle18Medium),
          ],
        ),
      ],
    );
  }
}
