
import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveApp());
}

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Layout',
      home: const ResponsiveHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Access screen size using MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;

    // Define breakpoints
    if (screenWidth < 600) {
      // Mobile layout
      return const MobileLayout();
    } else if (screenWidth >= 600 && screenWidth < 1024) {
      // Tablet layout
      return const TabletLayout();
    } else {
      // Desktop layout
      return const DesktopLayout();
    }
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mobile Layout")),
      body: const Center(
        child: Text("This is Mobile View", style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tablet Layout")),
      body: const Center(
        child: Text("This is Tablet View", style: TextStyle(fontSize: 22)),
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Desktop Layout")),
      body: const Center(
        child: Text("This is Desktop View", style: TextStyle(fontSize: 26)),
      ),
    );
  }
}
