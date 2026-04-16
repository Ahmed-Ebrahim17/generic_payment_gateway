import 'package:flutter/material.dart';
import 'package:genric_payment_gateway/core/widgets/dash_line.dart';
import 'package:genric_payment_gateway/features/checkout/ui/widgets/custom_check_item.dart';
import 'package:genric_payment_gateway/features/checkout/ui/widgets/transaction_result_details.dart';

class TransactionResultBody extends StatelessWidget {
  const TransactionResultBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 24, right: 24),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          TransactionResultsDetails(),
          Positioned(left: 0, right: 0, top: -50, child: CustomCheckItem()),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            right: -20,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            left: -20,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2 + 20,
            left: 20,
            right: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: DashLine(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
