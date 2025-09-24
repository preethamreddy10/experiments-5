import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive UI Example',
      debugShowCheckedModeBanner: false,
      home: const ResponsiveHome(),
    );
  }
}

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Responsive UI"), centerTitle: true),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            // 📱 Mobile Layout
            return _buildMobileLayout();
          } else if (constraints.maxWidth < 1200) {
            // 💻 Tablet Layout
            return _buildTabletLayout();
          } else {
            // 🖥️ Desktop Layout
            return _buildDesktopLayout();
          }
        },
      ),
    );
  }

  // 📱 Mobile UI
  Widget _buildMobileLayout() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.phone_android, size: 80, color: Colors.blue),
          SizedBox(height: 20),
          Text(
            "Mobile Layout",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  // 💻 Tablet UI
  Widget _buildTabletLayout() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.tablet, size: 100, color: Colors.green),
          SizedBox(width: 20),
          Text(
            "Tablet Layout",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  // 🖥️ Desktop UI
  Widget _buildDesktopLayout() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.desktop_windows, size: 120, color: Colors.orange),
          SizedBox(width: 20),
          Text(
            "Desktop Layout",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
