import 'package:flutter/material.dart';

class Chairs {
  final Icon icon;
  final Color color1, color2, color3;

  Chairs({this.icon, this.color1, this.color2, this.color3});
}

List chairs = [
  Chairs(
    color1: Colors.amber,
    color2: Colors.white12,
    color3: Colors.white54,
  )
];
