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
            Text(
                style: const TextStyle(fontFamily: 'Time', fontSize: 24),
                '$nameResult'),
            const SizedBox(height: 16),
            Text(
                style: TextStyle(fontFamily: 'Time', fontSize: 24, color: (debtResult! > 0) ?Colors.red :Colors.green),
                'Задолжность всего: $debtResult руб.'),
            const SizedBox(height: 8),
            Text(
                style: const TextStyle(fontFamily: 'Time', fontSize: 22),
                'Сумма долга: $debtAmountResult руб.'),
            const SizedBox(height: 8),
            Text(
                style: const TextStyle(fontFamily: 'Time', fontSize: 22),
                'Сумма переплаты: $overpaymentResult руб.'),
            const SizedBox(height: 8),
            Text(
                style: const TextStyle(fontFamily: 'Time', fontSize: 22),
                'Пени: $penaltiesResult руб.'),
          ],
        ));
  }
}
