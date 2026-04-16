import 'package:flutter/material.dart';
import 'package:genric_payment_gateway/core/helpers/extensions.dart';
import 'package:genric_payment_gateway/core/routing/routes.dart';
import 'package:genric_payment_gateway/features/checkout/ui/widgets/pay_button.dart';
import 'package:genric_payment_gateway/features/checkout/ui/widgets/payment_card_form.dart';
import 'package:genric_payment_gateway/features/checkout/ui/widgets/select_payment_method.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SelectPaymentMethod()),
        SliverToBoxAdapter(child: PaymentCardForm(formKey: formKey)),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
              child: PaymentButton(
                onpressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.pushNamed(Routes.transactionResultScreen);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
