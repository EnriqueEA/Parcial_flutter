import 'package:flutter/material.dart';

class IconStyle extends StatelessWidget {
  final IconData icon;

  const IconStyle(
    this.icon, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 6, right: 8, top: 3, bottom: 3),
      padding: EdgeInsets.all(8),
      child: Icon(icon, size: 25, color: Colors.white),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.pinkAccent[700], Colors.deepPurple],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0],
        ),
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
