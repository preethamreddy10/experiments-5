import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Exp5Page extends StatelessWidget {
  const Exp5Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterModel(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Stateful Example with setState:"),
          StatefulCounter(),
          const Divider(),
          const Text("Provider Example:"),
          ConsumerCounter(),
        ],
      ),
    );
  }
}

class StatefulCounter extends StatefulWidget {
  @override
  State<StatefulCounter> createState() => _StatefulCounterState();
}

class _StatefulCounterState extends State<StatefulCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Count: $count"),
        ElevatedButton(
          onPressed: () => setState(() => count++),
          child: const Text("Increment"),
        ),
      ],
    );
  }
}

class CounterModel extends ChangeNotifier {
  int count = 0;
  void increment() {
    count++;
    notifyListeners();
  }
}

class ConsumerCounter extends StatelessWidget {
  const ConsumerCounter({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterModel>();
    return Column(
      children: [
        Text("Count: ${counter.count}"),
        ElevatedButton(
          onPressed: counter.increment,
          child: const Text("Increment"),
        ),
      ],
    );
  }
}
