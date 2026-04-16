import 'package:flutter/material.dart';
import 'package:genric_payment_gateway/core/theming/colors.dart';
import 'package:genric_payment_gateway/core/theming/styles.dart';

class QrCodeWithPaidWidget extends StatelessWidget {
  const QrCodeWithPaidWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/images/qrcode.png", height: 80, width: 120),
        Container(
          height: 58,
          width: 113,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: ColorsManager.mainGreen, width: 2),
          ),
          child: Center(
            child: Text(
              "PAID",
              style: AppStyles.textStyle24blackSemiBold.copyWith(
                color: ColorsManager.mainGreen,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
