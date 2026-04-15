import 'package:flutter/material.dart';
import 'package:genric_payment_gateway/core/routing/routes.dart';
import 'package:genric_payment_gateway/features/checkout/ui/cart_view.dart';
import 'package:genric_payment_gateway/features/checkout/ui/payment_details.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // This argumnets it to be passed to
    final argments = settings.arguments;
    switch (settings.name) {
      case Routes.myCartScreen:
        return MaterialPageRoute(builder: (_) => const CartView());

      case Routes.paymentDetailsScreen:
        return MaterialPageRoute(builder: (_) => const PaymentDetails());
      //   case Routes.signUpScreen:
      //     return MaterialPageRoute(
      //       builder: (_) => BlocProvider(
      //         create: (context) => getIt<SignupCubit>(),
      //         child: const SignupScreen(),
      //       ),
      //     );
      //   case Routes.homeScreen:
      //     return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text("No route defined for ${settings.name}")),
          ),
        );
    }
  }
}
