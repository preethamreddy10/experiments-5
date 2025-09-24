import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Text Widget Example'), centerTitle: true),
      body: Center(
        child: Text(
          'Hello, Flutter!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            letterSpacing: 2,
          ),
        ),
      ),
    ),
  ),
);
