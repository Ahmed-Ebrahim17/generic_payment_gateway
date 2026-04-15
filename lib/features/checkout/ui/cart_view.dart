import 'package:flutter/material.dart';

import 'package:genric_payment_gateway/features/checkout/ui/widgets/my_cart_view_body.dart';

import '../../../core/widgets/build_appbar.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWidget(title: 'My Cart'),
      body: MyCartViewBody(),
    );
  }
}
