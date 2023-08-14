import 'dart:async';

import 'package:flutter/material.dart';

import '../Layout/HomeLayout.dart';
import '../utles/color.dart';

class SplachSreen extends StatelessWidget {
  static const String id = "SplachSreen";

  @override
  Widget build(BuildContext context) {
    Timer(Duration(milliseconds: 3), () {
      Navigator.pushNamed(context, HomeLayout.id);
    });

    return Scaffold(
      backgroundColor: SplachColor,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"),
          ],
        ),
      ),
    );
  }
}
