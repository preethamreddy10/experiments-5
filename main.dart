import 'package:flutter/material.dart';
import 'exp_2a.dart';
import 'exp_2b.dart';
import 'exp_3.dart';
import 'exp_4.dart';
import 'exp_5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Flutter Experiments"),
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: "2a Widgets"),
                Tab(text: "2b Layouts"),
                Tab(text: "3 Responsive"),
                Tab(text: "4 Navigation"),
                Tab(text: "5 State Mgmt"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Exp2aPage(),
              Exp2bPage(),
              Exp3Page(),
              Exp4Page(),
              Exp5Page(),
            ],
          ),
        ),
      ),
    );
  }
}
