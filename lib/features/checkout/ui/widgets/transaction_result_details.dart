import 'package:flutter/material.dart';
import 'package:genric_payment_gateway/core/helpers/spacing.dart';
import 'package:genric_payment_gateway/core/theming/colors.dart';
import 'package:genric_payment_gateway/features/checkout/ui/widgets/credit_card_shape.dart';
import 'package:genric_payment_gateway/features/checkout/ui/widgets/qrcode_with_paid_widget.dart';
import 'package:genric_payment_gateway/features/checkout/ui/widgets/total_price.dart';
import 'package:genric_payment_gateway/features/checkout/ui/widgets/transaction_result_details_item.dart';

class TransactionResultsDetails extends StatelessWidget {
  const TransactionResultsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 50 + 16, left: 16, right: 16),
      decoration: ShapeDecoration(
        color: ColorsManager.lighterGrey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Column(
        children: [
          TransactionResultDetailsItem(),
          verticalSpace(20),
          Divider(color: ColorsManager.darkGrey, thickness: 2),
          verticalSpace(20),
          TotalPrice(),
          verticalSpace(20),
          CreditCardShape(),
          Spacer(),
          QrCodeWithPaidWidget(),
          SizedBox(height: (MediaQuery.of(context).size.height * 0.2 / 2) - 29),
        ],
      ),
    );
  }
}
