import 'package:flutter/material.dart';

import 'package:snt_test/Domain/ProcessingApi_1s.dart';
import 'package:snt_test/Presentation/HomePage.dart';
import '../Domain/forCabinet.dart';

class Authorization extends StatelessWidget {
  const Authorization({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(child: Text('СНТ Магистраль')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        },
        child: const Text('ОК'),
      ),
      body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Номер участка'),
              TextField(
                onChanged: toPlotNumber,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
              Text('Пароль'),
              TextField(
                onChanged: toPass,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  //Map testX = await ProcessingApi1s().keyDebts();
                  Map testY = await ProcessingApi1s().numberKeyName();
                  //print(testX["value"][0]["Всего"]);
                  //print(testY["value"][30]["ПредставлениеВладельцевУчастка"]);
                  print(testY['245']);
                },
                child: Text('test api'),
              )
            ],
          )),
    );
  }
}
