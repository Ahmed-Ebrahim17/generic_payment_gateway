import 'package:flutter/material.dart';
import 'package:genric_payment_gateway/core/theming/styles.dart';
import 'package:genric_payment_gateway/core/widgets/app_text_button.dart';

class PaymentButton extends StatelessWidget {
  const PaymentButton({super.key, required this.onpressed});

  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonText: 'Payment',
      textStyle: AppStyles.textStyle22blackmedium,
      onpressed: onpressed,
    );
  }
}
