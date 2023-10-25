import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task1/login.dart';
import 'package:task1/main.dart';

class montra extends StatefulWidget {
  const montra({super.key});

  @override
  State<montra> createState() => _MyAppState();
}

class _MyAppState extends State<montra> {
  @override
  void initState() {
    super.initState();
    Timer(
     const Duration(seconds: 5),()
     =>Navigator.pushReplacement(context,MaterialPageRoute(
      builder: (context) => login(),
        ),
       ),
      );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Center(
        child: Text(
          'montra',
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      }
   }
