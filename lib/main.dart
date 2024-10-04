import 'package:flutter/material.dart';
import 'Presentation/Authorization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'СНТ Магистраль',
      home: Authorization(),
    );
  }
}
