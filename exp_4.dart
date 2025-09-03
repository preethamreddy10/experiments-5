import 'package:flutter/material.dart';

class Exp4Page extends StatelessWidget {
  const Exp4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        if (settings.name == '/second') {
          return MaterialPageRoute(builder: (_) => const SecondScreen());
        }
        return MaterialPageRoute(builder: (_) => FirstScreen());
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, '/second'),
        child: const Text("Go to Second Screen"),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => Navigator.pop(context),
        child: const Text("Back"),
      ),
    );
  }
}
