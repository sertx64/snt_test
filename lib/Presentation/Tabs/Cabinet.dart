import 'package:flutter/material.dart';
import 'package:snt_test/Domain/forCabinet.dart';

class Cabinet extends StatelessWidget {
  const Cabinet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Text('Задолжность всего: $debtResult руб.'),
            const SizedBox(height: 8),
            Text('Сумма долга: $debtAmountResult руб.'),
            const SizedBox(height: 8),
            Text('Сумма переплаты: $overpaymentResult руб.'),
            const SizedBox(height: 8),
            Text('Пени: $penaltiesResult руб.'),
          ],
        ));
  }
}
