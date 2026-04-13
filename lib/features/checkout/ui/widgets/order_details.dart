import 'package:flutter/material.dart';
import 'package:genric_payment_gateway/core/theming/styles.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Subtotal', style: AppStyles.textStyleRegular18),
            Text('\$42.97', style: AppStyles.textStyleRegular18),]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Discount', style: AppStyles.textStyleRegular18),
                Text('\$0', style: AppStyles.textStyleRegular18),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Shipping', style: AppStyles.textStyleRegular18),
                Text('\$8', style: AppStyles.textStyleRegular18),
              ],
            ),
          ],
        
      
    );
  }
}
