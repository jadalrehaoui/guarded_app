import 'package:flutter/material.dart';

class RoundedFullWidthButton extends StatelessWidget {
  const RoundedFullWidthButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){}, child: Text(text, style: TextStyle(fontSize: 17)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90))),
            )
      );
  }
}