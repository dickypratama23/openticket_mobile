import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final icon;
  final double? size;
  final Color color;


  const CustomIcon({
    required this.icon,
    this.size,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color, // Color(0xffE7AB79)
    );
  }
}
