import 'package:flutter/material.dart';
import 'package:genric_payment_gateway/features/checkout/ui/widgets/image_orders_with_details.dart';

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
            onpressed: () => context.pushNamed(Routes.paymentDetailsScreen),
          ),
        ],
      ),
    );
  }
}
