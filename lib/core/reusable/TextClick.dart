import 'package:flutter/material.dart';

class TextClick extends StatelessWidget {
  const TextClick({super.key, required this.text, required this.fontSize, required this.onPressed});
  final String text;
  final double fontSize;
  final Function()? onPressed;
  void defaultBehavior() {
    print("Button w/ text => " + text + " has been clicked");
  }
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
        onPressed: onPressed ?? () => defaultBehavior(), 
        child: Text(text, style: TextStyle(fontSize: fontSize, color: Theme.of(context).primaryColor),));
  }
}