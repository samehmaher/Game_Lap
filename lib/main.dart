import 'package:flutter/material.dart';
import 'package:game_lap/Screens/login_screen.dart';
import 'package:game_lap/Screens/splash_screen.dart';
main(){
  runApp(Home());
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInScreen(),
    );
  }
}
