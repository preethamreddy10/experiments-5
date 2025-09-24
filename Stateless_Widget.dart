import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// Root widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stateless Widget Demo',
      home: MyStatelessWidget(),
    );
  }
}

// Stateless Widget Example
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stateless Widget Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "I am a Stateless Widget 😎",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Icon(Icons.flutter_dash, size: 80, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
