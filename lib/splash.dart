import 'dart:async';

import 'package:flutter/material.dart';
import 'package:telegram_chat/pages/homepage.dart';

import 'package:telegram_chat/pages/welcome_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
    });
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            "Logo",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
