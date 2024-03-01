// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instegram_clone/core/constants/image_constants.dart';
import 'package:instegram_clone/view/select_account_screen/select_account.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SelectAccountScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Image.asset(
      ImageConstants.appIconpng,
      scale: 1.5,
    )));
  }
}
