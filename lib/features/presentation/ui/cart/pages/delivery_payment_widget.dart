import 'package:bbt/generated/l10n.dart';
import 'package:flutter/material.dart';

class DeliveryPaymentWidget extends StatefulWidget {
  final int sum;
  const DeliveryPaymentWidget({super.key, required this.sum});

  @override
  State<DeliveryPaymentWidget> createState() => _DeliveryPaymentWidgetState();
}

class _DeliveryPaymentWidgetState extends State<DeliveryPaymentWidget> {
  // Значения для первого DropdownButton
  final String defaultAddress = S.current.defaultAddress;

  // Значения для второго DropdownButton
  final List<String> paymentMethods = [S.current.transferToCard, S.current.paymentCash];

  String selectedPaymentMethod = S.current.transferToCard;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.deliveryAdress,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        DropdownButton<String>(
          dropdownColor: Theme.of(context).scaffoldBackgroundColor,
          style: Theme.of(context).textTheme.bodyLarge,
          value: defaultAddress,
          items: [DropdownMenuItem(value: defaultAddress, child: Text(defaultAddress))],
          onChanged: (_) {}, // Здесь нет необходимости в обработке
        ),
        const SizedBox(height: 24),
        Text(
          S.current.paymentMethod,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        DropdownButton<String>(
          dropdownColor: Theme.of(context).scaffoldBackgroundColor,
          style: Theme.of(context).textTheme.bodyLarge,
          value: selectedPaymentMethod,
          items:
              paymentMethods
                  .map((method) => DropdownMenuItem(value: method, child: Text(method)))
                  .toList(),
          onChanged: (value) {
            setState(() {
              selectedPaymentMethod = value!;
            });
          },
        ),
        const SizedBox(height: 24),
        if (selectedPaymentMethod == S.current.transferToCard)
          Text(
            S.current.transferAmount(widget.sum),
            softWrap: true,
            style: const TextStyle(fontSize: 16),
          ),
      ],
    );
  }
}
