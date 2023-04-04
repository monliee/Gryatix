import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String buttonText;
  final Color? color;
  final TextStyle? textStyle;
  final BoxBorder? border;
  final Gradient? gradient;
  final double height;
  const CustomButton({
    super.key,
    required this.buttonText,
    this.onTap,
    this.color,
    this.textStyle,
    this.border,
    this.gradient,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
      child: Container(
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          border: border,
          gradient: gradient,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(buttonText, style: textStyle),
      ),
    );
  }
}
