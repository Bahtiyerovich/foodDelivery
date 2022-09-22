import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  BigText({
    Key? key,
    this.color = const Color(0xff332d2b),
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.size = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboro',
      ),
    );
  }
}