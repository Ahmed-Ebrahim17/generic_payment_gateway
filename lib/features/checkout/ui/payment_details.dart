import 'package:flutter/material.dart';
import 'package:genric_payment_gateway/core/widgets/build_appbar.dart';
import 'package:genric_payment_gateway/features/checkout/ui/widgets/payment_details_view.body.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWidget(title: 'Payment Details'),
      body: PaymentDetailsViewBody(),
    );
  }
}
