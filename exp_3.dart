import 'package:flutter/material.dart';

class Exp3Page extends StatelessWidget {
  const Exp3Page({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    bool isLarge = size.width > 600;

    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        color: isLarge ? Colors.green[200] : Colors.blue[200],
        child: Text(
          isLarge
              ? "Large Screen Layout (${size.width}px)"
              : "Small Screen Layout (${size.width}px)",
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
