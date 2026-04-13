import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:genric_payment_gateway/core/helpers/spacing.dart';
import 'package:genric_payment_gateway/core/theming/styles.dart';
import 'package:genric_payment_gateway/core/widgets/app_text_button.dart';
import 'package:genric_payment_gateway/features/checkout/ui/widgets/image_orders_with_details.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Center(
          child: SvgPicture.asset('assets/images/arrow_back.svg'),
        ),
        centerTitle: true,
        title: const Text('Cart'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          child: Column(
            children: [
             ImageOrdersWithDetails(),
             verticalSpace(8),
              AppTextButton(
                buttonText: 'Complete Payment',
                textStyle: AppStyles.textStyle22blackmedium,
                onpressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
