import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentCardForm extends StatefulWidget {
  const PaymentCardForm({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  State<PaymentCardForm> createState() => _PaymentCardFormState();
}

class _PaymentCardFormState extends State<PaymentCardForm> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool showBackView = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          isHolderNameVisible: true,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (creditCardModel) {
            setState(() {
              cardNumber = creditCardModel.cardNumber;
              expiryDate = creditCardModel.expiryDate;
              cardHolderName = creditCardModel.cardHolderName;
              cvvCode = creditCardModel.cvvCode;
              showBackView = creditCardModel.isCvvFocused;
            });
          },
          formKey: widget.formKey,
        ),
      ],
    );
  }
}
