import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/services.dart';
import '../widgets/sample_widget.dart';
import 'package:flutter/services.dart';

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
  final _formKey = GlobalKey<FormState>();
  String ? email, password;

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: HexColor('#203D83'),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width / 10 * 8,
              height: MediaQuery.of(context).size.height / 17,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white70,
                ),
                child: new TextField(
                  // controller: emailController,
                  textAlign: TextAlign.center,
                  decoration: new InputDecoration(
                    hintText: 'johndoe@sot.pdpu.ac.in',
                    border: InputBorder.none
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            SizedBox(
              width: MediaQuery.of(context).size.width / 10 * 8,
              height: MediaQuery.of(context).size.height / 17,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white70,
                ),
                child: new TextField(
                  // controller: passwordController,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  decoration: new InputDecoration(
                      hintText: 'password@123',
                      border: InputBorder.none
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            Text('Forgot password? Reset here', style: TextStyle(color: Colors.white),),
            SizedBox(height: 15.0,),
            Container(
              width: MediaQuery.of(context).size.width / 10 * 8,
              height: MediaQuery.of(context).size.height / 25,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<HexColor>(HexColor('#BDCFFB')),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height / 50),
                  ))
                ),
                child: const Text('Sign In', style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),),
                onPressed: () {
                  // _submitForm(emailController.text.toString().trim(), passwordController.text.toString().trim(), context);
                },
              ),
            ),
            Spacer(),
            Text('New User?', style: TextStyle(color: Colors.white),),
            SizedBox(height: 15.0,),
            Container(
              width: MediaQuery.of(context).size.width / 10 * 8,
              height: MediaQuery.of(context).size.height / 25,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<HexColor>(HexColor('#BDCFFB')),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height / 50),
                    ))
                ),
                child: const Text('Sign In', style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),),
                onPressed: () {
                  // _submitForm(emailController.text.toString().trim(), passwordController.text.toString().trim(), context);
                },
              ),
            ),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
