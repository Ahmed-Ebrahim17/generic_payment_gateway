import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genric_payment_gateway/core/routing/app_router.dart';
import 'package:genric_payment_gateway/core/routing/routes.dart';
import 'package:genric_payment_gateway/features/checkout/ui/cart_view.dart';

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CartView(),
        onGenerateRoute: AppRouter().generateRoute,
        initialRoute: Routes.myCartScreen,
      ),
    );
  }
}
