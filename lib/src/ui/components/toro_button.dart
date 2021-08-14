import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toro_investimentos/src/ui/login/login_form.dart';

class ToroButton extends StatelessWidget {
  const ToroButton({
    Key? key,
    required this.padding,
    required this.buttonText,
    this.buttonStyle,
    this.buttonTextStyle,
    required this.onPressed,
    this.width = double.infinity,
  }) : super(key: key);

  final EdgeInsets padding;
  final String buttonText;
  final ButtonStyle? buttonStyle;
  final TextStyle? buttonTextStyle;
  final VoidCallback onPressed;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width,
      child: OutlinedButton(
        style: buttonStyle != null
            ? buttonStyle
            : Theme.of(context).outlinedButtonTheme.style,
        onPressed: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            buttonText,
            style: buttonTextStyle != null ? buttonTextStyle : TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
