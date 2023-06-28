import 'package:flutter/material.dart';

class CustomJob extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;

  const CustomJob({
    required this.text,
    this.color = Colors.blueAccent,
    this.fontSize = 20,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 10,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
