import 'package:flutter/material.dart';
import 'package:snt_test/Domain/forCabinet.dart';
import 'package:snt_test/Presentation/Tabs/Cabinet.dart';
import 'package:snt_test/Presentation/Tabs/News.dart';
import 'package:snt_test/Presentation/Tabs/Vote.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Column(children: [
          const Text('СНТ Магистраль'),
          Text('участок № $areaNumberResult')
        ]),

        bottom: TabBar(
          unselectedLabelColor: Colors.white,
          labelColor: Colors.white,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 2.5,
          indicatorPadding: const EdgeInsets.all(7.0),
          labelStyle: const TextStyle(fontFamily: 'Time', fontSize: 16),
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: 'кабинет'),
            Tab(text: 'новости'),
            Tab(text: 'голосование'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Cabinet(),
          News(),
          Vote(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}