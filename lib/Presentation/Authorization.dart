import 'package:flutter/material.dart';
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
          ForCabinet.areaNumberResult == 'null'
              ? null
              : Navigator.push(
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
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Номер участка'),
              TextField(
                onChanged: toAreaNumber,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
              Text('Код'),
              TextField(
                //onChanged: toPass,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
