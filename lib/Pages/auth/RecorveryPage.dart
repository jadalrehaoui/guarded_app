import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guarded/core/reusable/InputField.dart';
import 'package:guarded/core/reusable/RoundedFullWidthButton.dart';
import 'package:guarded/core/reusable/TextClick.dart';

class RecoveryPage extends StatelessWidget {
  const RecoveryPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height - 80,
            padding: EdgeInsets.symmetric(horizontal: 15),
            color: Colors.white,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset('assets/images/authentication_safe.png', height: 250),
                    Text("Welcome to Guarded", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                  ]
                ),
                Column(
                  children: [
                    InputField(hintText: "Email"),
                    SizedBox(height: 15),
                    RoundedFullWidthButton(text: "Recover password", onPressed: null,),
                    TextClick(text: "Back to login", fontSize: 17, onPressed: () => context.popRoute())
                  ]
                ),
                Text("Copyright © LazyClick.io", style: TextStyle(fontSize: 13))
              ],
            ),
          ),
      )
    );
  }
}