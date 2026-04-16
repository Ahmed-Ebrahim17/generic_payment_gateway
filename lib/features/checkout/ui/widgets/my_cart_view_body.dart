import 'package:flutter/material.dart';
import 'package:genric_payment_gateway/features/checkout/ui/widgets/image_orders_with_details.dart';
import 'package:genric_payment_gateway/features/checkout/ui/widgets/pay_button.dart';
import 'package:genric_payment_gateway/features/checkout/ui/widgets/select_payment_method.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      child: Column(
        children: [
          Expanded(child: ImageOrdersWithDetails()),
          verticalSpace(18),
          AppTextButton(
            buttonText: 'Complete Payment',
            textStyle: AppStyles.textStyle22blackmedium,
            onpressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return PaymentDetailsViewBody();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          verticalSpace(16),
          SelectPaymentMethod(),
          verticalSpace(16),
          PaymentButton(
            onpressed: () {
              context.pushNamed(Routes.transactionResultScreen);
            },
          ),
        ],
      ),
    );
  }
}
