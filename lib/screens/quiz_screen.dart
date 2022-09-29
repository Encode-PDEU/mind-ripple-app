import 'package:flutter/material.dart';

// TODO: Document this widget
class QuizScreen extends StatefulWidget {
  static const String routeName = '/quiz';
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Title'),
      ),
      body: const Center(
        child: Text('Quiz Screen'),
      ),
    );
  }
}
