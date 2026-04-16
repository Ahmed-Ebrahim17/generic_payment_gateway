import 'package:flutter/material.dart';
import 'package:genric_payment_gateway/core/widgets/build_appbar.dart';
import 'package:genric_payment_gateway/features/checkout/ui/widgets/transcation_result_body.dart';

class TransactionResultScreen extends StatelessWidget {
  const TransactionResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWidget(),
      backgroundColor: Colors.white,
      body: Transform.translate(
        offset: Offset(0, -16),
        child: TransactionResultBody(),
      ),
    );
  }
}
