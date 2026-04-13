import 'package:flutter/material.dart';
import 'package:genric_payment_gateway/core/helpers/spacing.dart';
import 'package:genric_payment_gateway/core/theming/styles.dart';
import 'package:genric_payment_gateway/features/checkout/ui/widgets/order_details.dart';

class ImageOrdersWithDetails extends StatelessWidget {
  const ImageOrdersWithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/order_image.png', height: 400),
              verticalSpace(24),
             OrderDetails(),
              verticalSpace(10),
              Divider(endIndent: 16, indent: 16),
              verticalSpace(8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Total',style: AppStyles.textStyle24blackSemiBold,),
                Text('\$50.97',style: AppStyles.textStyle24blackSemiBold  ),

              ],
              ),
      ],
    );
  }
}