import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genric_payment_gateway/core/theming/colors.dart';

class PaymentCardItem extends StatelessWidget {
  const PaymentCardItem({
    super.key,
    required this.image,
    this.isActive = false,
    this.onTap,
  });

  final String image;
  final bool isActive;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
        width: 103.w,
        height: 62.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 1.5,
            color: isActive ? ColorsManager.mainGreen : ColorsManager.grey,
          ),
          boxShadow: [
            BoxShadow(
              color: isActive
                  ? ColorsManager.mainGreen.withValues(alpha: 0.3)
                  : Colors.transparent,
              blurRadius: 10,
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Center(child: Image.asset(image, width: 45.w)),
        ),
      ),
    );
  }
}
