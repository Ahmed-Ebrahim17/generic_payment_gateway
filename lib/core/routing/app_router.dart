import 'package:flutter/material.dart';
import 'package:genric_payment_gateway/core/routing/routes.dart';
import 'package:genric_payment_gateway/features/checkout/ui/cart_view.dart';
import 'package:genric_payment_gateway/features/checkout/ui/payment_details.dart';
import 'package:genric_payment_gateway/features/checkout/ui/transaction_result_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // This argumnets it to be passed to
    switch (settings.name) {
      case Routes.myCartScreen:
        return MaterialPageRoute(builder: (_) => const CartView());

      case Routes.paymentDetailsScreen:
        return MaterialPageRoute(builder: (_) => const PaymentDetails());
      case Routes.transactionResultScreen:
        return MaterialPageRoute(
          builder: (_) => const TransactionResultScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text("No route defined for ${settings.name}")),
          ),
        );
    }
  }
}
