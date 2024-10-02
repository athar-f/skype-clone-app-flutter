// ignore_for_file: camel_case_types, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:skype/main.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(title: ''),
          ));
    });
    super.initState();
  }

  @override
  void dispose() {
    dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset('assets/skype.png'),
        ]),
      ),
    );
  }
}
