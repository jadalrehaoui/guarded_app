import 'package:flutter/material.dart';

class RoundedFullWidthButton extends StatelessWidget {
  const RoundedFullWidthButton({super.key, required this.text, required this.onPressed});
  final String text;
  final Function()? onPressed;
  void defaultBehavior() {
    print("Button w/ text => " + text + " has been clicked");
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onPressed ?? () => defaultBehavior(), 
              child: Text(text, style: TextStyle(fontSize: 17)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                splashFactory: NoSplash.splashFactory,
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90))),
            )
      );
  }
}