import 'dart:async';
import 'package:flutter/material.dart';
import 'package:game_lap/Screens/login_screen.dart';
import 'package:game_lap/component/body_background.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: 5);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => LogInScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:bodyBackround(
          child: Center(
            child: Image.asset(
              'images/logo.png',
              width: 100,
              height: 120,
              fit: BoxFit.fill,
            ),
          ),
        )
    );
  }
}

