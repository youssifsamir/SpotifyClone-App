// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: library_private_types_in_public_api

//packages
import 'dart:async';
import 'package:flutter/material.dart';

//screens
import 'home.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreen createState() => _LandingScreen();
}

class _LandingScreen extends State<LandingScreen> {
  @override
  void initState() {
    Timer(
      const Duration(milliseconds: 1000),
      () => setState(
        () => Navigator.popAndPushNamed(context, HomeScreen.routeName),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      body: Center(
        child: Image.asset(
          './assets/logo.png',
          width: MediaQuery.of(context).size.width * 0.4,
        ),
      ),
    );
  }
}
