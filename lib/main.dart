import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './screens/login_screen.dart';
import './screens/quiz_screen.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MindRipple());
}

/// [MindRipple] is the root of the app.
/// It contains the ThemeData and the routes.
class MindRipple extends StatelessWidget {
  const MindRipple({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mind Ripple',
      home: const LoginScreen(),
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        QuizScreen.routeName: (context) => const QuizScreen(),
      },
      // home: LoginScreen(),
    );
  }
}
