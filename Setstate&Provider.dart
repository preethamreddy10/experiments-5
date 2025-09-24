import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => GlobalCounter(),
      child: const MyApp(),
    ),
  );
}

// Provider for global counter
class GlobalCounter extends ChangeNotifier {
  int counter = 0;

  void increment() {
    counter++;
    notifyListeners(); // updates UI
  }

  void decrement() {
    counter--;
    notifyListeners(); // updates UI
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CombinedCounterScreen(),
    );
  }
}

class CombinedCounterScreen extends StatefulWidget {
  const CombinedCounterScreen({super.key});

  @override
  State<CombinedCounterScreen> createState() => _CombinedCounterScreenState();
}

class _CombinedCounterScreenState extends State<CombinedCounterScreen> {
  int localCounter = 0; // Counter using setState

  void _incrementLocal() {
    setState(() {
      localCounter++;
    });
  }

  void _decrementLocal() {
    setState(() {
      localCounter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final globalCounter = Provider.of<GlobalCounter>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("SetState & Provider Demo")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Local state counter (setState)
            const Text(
              "Local Counter (setState):",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "$localCounter",
              style: const TextStyle(fontSize: 36, color: Colors.blue),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decrementLocal,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _incrementLocal,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 50),

            // Global state counter (Provider)
            const Text(
              "Global Counter (Provider):",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "${globalCounter.counter}",
              style: const TextStyle(fontSize: 36, color: Colors.green),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: globalCounter.decrement,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: globalCounter.increment,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
