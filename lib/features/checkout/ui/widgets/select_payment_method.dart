import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genric_payment_gateway/features/checkout/ui/widgets/payment_card.dart';

class SelectPaymentMethod extends StatefulWidget {
  const SelectPaymentMethod({super.key});

  @override
  State<SelectPaymentMethod> createState() => _SelectPaymentMethodState();
}

class _SelectPaymentMethodState extends State<SelectPaymentMethod> {
  int _selectedIndex = 0;

  final List<String> _paymentImages = [
    'assets/images/card.png',
    'assets/images/paypal.png',
    'assets/images/applePay.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              _paymentImages.length,
              (index) => PaymentCardItem(
                image: _paymentImages[index],
                isActive: _selectedIndex == index,
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
