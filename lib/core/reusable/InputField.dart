import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({Key? key, required this.hintText, this.isPassword = false}) : super(key: key);
  final String hintText;
  final bool isPassword;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.25)),
          BoxShadow(offset: Offset(0, 0), color: Colors.white, spreadRadius: -0.0, blurRadius: 3)
        ]
      ),
      child: Material(
        color: Colors.transparent,
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
            hintText: hintText,
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
          ),
          obscureText: isPassword,
        )
      ),
    );
  }
}