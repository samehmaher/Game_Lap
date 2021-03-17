import 'package:flutter/material.dart';
class SocialIcons extends StatelessWidget {
  SocialIcons({this.icon});
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
        child: Icon(
          icon,
          color: Colors.green,
          size: 30,
        ),
      ),
    );
  }
}