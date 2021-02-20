import 'package:flutter/material.dart';

class InputFlied extends StatelessWidget {
  final String text;
  final double fontSize;
  final String fontFamily;
  final Color color;
  final Color color1;
  final bool obscure;

  const InputFlied({
    Key key,
    this.text,
    this.fontSize,
    this.fontFamily,
    this.color,
    this.color1,
    this.obscure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: color1,
            ),
          ),
          hintText: text,
          hintStyle: TextStyle(
            color: color1,
            fontFamily: fontFamily,
            fontSize: fontSize,
          ),
          focusColor: color,
          hoverColor: color1,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: color1,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        obscureText: obscure,
        style: TextStyle(
          color: color,
          fontFamily: fontFamily,
          letterSpacing: 1,
          fontSize: fontSize,
          fontStyle: FontStyle.italic,
        ),
        textAlign: TextAlign.center,
        cursorColor: color,
        cursorRadius: Radius.circular(1),
      ),
    );
  }
}
