import 'package:flutter/material.dart';
import 'package:game_lap/Screens/home_screen.dart';
import 'package:game_lap/component/body_background.dart';
class GetStartedScreen extends StatefulWidget {
  GetStartedScreen({this.email});
  final String email;
  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyBackround(
       child: Padding(
         padding: const EdgeInsets.all(24.0),
         child: Center(
          child: Column(

            children: [

              Spacer(),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 90,
              ),
              SizedBox(height: 20,),
              Text('Mohamed Seada' , style: TextStyle(color: Colors.green , fontSize: 20),),
              SizedBox(height: 20,),
              Text('Your account is ready! Tap on Get Started to proceed.' , textAlign: TextAlign.center , style: TextStyle(
                  color: Colors.white , fontSize: 16),),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen(email: widget.email,)));
                    },
                    minWidth: 200,
                    height: 42.0,
                    child: Text(
                      'Get Started',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
      ),
       ),
      ),
    );
  }
}
