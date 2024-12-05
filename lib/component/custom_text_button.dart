import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton({
    super.key,
    this.onPressed,
    required this.text,
    required this.foregroundColor,
    required this.backgroundColor,
  });
  final VoidCallback? onPressed;
  final String text;
  final Color foregroundColor;
  final Color backgroundColor;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          minimumSize: Size(double.infinity, 60)),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
