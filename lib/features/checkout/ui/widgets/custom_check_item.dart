import 'package:flutter/material.dart';
import 'package:genric_payment_gateway/core/theming/colors.dart';

class CustomCheckItem extends StatelessWidget {
  const CustomCheckItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: ColorsManager.lighterGrey,
      child: CircleAvatar(
        backgroundColor: ColorsManager.mainGreen,
        radius: 40,
        child: Icon(Icons.check, size: 50, color: Colors.white),
      ),
    );
  }
}
