import 'package:flutter/material.dart';

class Exp2bPage extends StatelessWidget {
  const Exp2bPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Row Example"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.star, color: Colors.red),
            Icon(Icons.star, color: Colors.green),
            Icon(Icons.star, color: Colors.blue),
          ],
        ),
        const SizedBox(height: 20),
        const Text("Column Example"),
        Column(
          children: const [Text("Item 1"), Text("Item 2"), Text("Item 3")],
        ),
        const SizedBox(height: 20),
        const Text("Stack Example"),
        Expanded(
          child: Stack(
            children: [
              Container(color: Colors.yellow),
              Align(
                alignment: Alignment.center,
                child: Container(color: Colors.red, width: 100, height: 100),
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: Icon(Icons.star, size: 50),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
