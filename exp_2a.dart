import 'package:flutter/material.dart'; // to have related flutter components

class Exp2aPage extends StatelessWidget {
  const Exp2aPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Hello Flutter!",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 20),
          Image.network(
            "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
            height: 150,
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.amber[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text("This is inside a Container widget."),
          ),
        ],
      ),
    );
  }
}
