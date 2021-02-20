import 'package:flutter/material.dart';
import 'package:calert/constants.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final String fontFamily;
  final Function press;
  final double verticalPadding;
  final double verticalMargin;
  final double horizontalPadding;
  final double fontSize;
  final Color color;
  final Color backgroundColor;
  final double radius;

  const RoundButton({
    Key key,
    this.text,
    this.press,
    this.verticalPadding,
    this.fontSize = 12,
    this.horizontalPadding,
    this.verticalMargin,
    this.color = black,
    this.fontFamily,
    this.backgroundColor = white,
    this.radius = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: verticalMargin,
        ),
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: horizontalPadding,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          // border: Border.all(
          // width: 2.0,
          // color: color,
          // ),
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 30,
              color: Color(0xFF666666).withOpacity(.11),
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: color,
            fontFamily: fontFamily,
            letterSpacing: 1,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
