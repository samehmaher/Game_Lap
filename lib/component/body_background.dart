import 'package:flutter/material.dart';
class bodyBackround extends StatelessWidget {
  const bodyBackround({this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/backeground.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: child ,
    );
  }
}
