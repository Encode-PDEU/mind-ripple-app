import 'package:flutter/material.dart';
import 'package:mind_ripple/widgets/widgets.dart';

import '../widgets/sample_widget.dart';
import '../widgets/widgets.dart';

/// [LoginScreen] is the first screen that the user will see.
/// This screen has a login form.
/// The user can login using their email and password.
/// [SampleWidget] is used to display a sample text.

class LoginScreen extends StatefulWidget {
  // static const String routeName = '/auth';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String ? email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Spacer(),
              TextFormField(
                // validator: (val){return val.isEmpty ? "Enter E-mail ID" : null;},
                decoration: InputDecoration(
                  hintText: "E-mail"
                ),
                onChanged: (val){email = val;},
              ),
              SizedBox(height: 6,),
              TextFormField(
                // validator: (val){return val.isEmpty ? "Enter password" : null;},
                decoration: InputDecoration(
                    hintText: "Password"
                ),
                onChanged: (val){password = val;},
              ),
              SizedBox(height: 24,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 48,
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 18,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    style: TextStyle(
                      fontSize: 15.5,
                    ),
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 15.5,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),

              SizedBox(height: 80,),
            ],
          ),
        ),
      ),
    );
  }
}
