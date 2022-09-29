import 'package:flutter/material.dart';

// TODO: Document this widget
class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mind Ripple'),
      ),
      body: const Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
