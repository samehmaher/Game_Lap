import 'package:flutter/material.dart';
import 'package:game_lap/Screens/get_started.dart';
import 'package:game_lap/Screens/login_screen.dart';
import 'package:game_lap/Screens/sign_up_screen.dart';
import 'package:game_lap/Screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Screens/home_screen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
      ),
    );
  }
}
