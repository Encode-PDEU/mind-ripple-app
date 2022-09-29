import 'package:flutter/material.dart';

import '../widgets/sample_widget.dart';

/// [LoginScreen] is the first screen that the user will see.
/// This screen has a login form.
/// The user can login using their email and password.
/// [SampleWidget] is used to display a sample text.

class LoginScreen extends StatefulWidget {
  static const String routeName = '/auth';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SampleWidget(),
    );
  }
}
