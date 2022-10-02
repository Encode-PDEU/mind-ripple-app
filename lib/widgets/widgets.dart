import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return Center(
    child: RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 22),
        children: const <TextSpan>[
          TextSpan(
            text: 'Mind',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.black54
            )
          ),
          TextSpan(
              text: 'Ripple',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.blue
              )
          ),
        ],
      ),
    ),
  );
}