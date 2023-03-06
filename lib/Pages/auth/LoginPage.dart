import 'package:flutter/material.dart';
import 'package:guarded/core/reusable/InputField.dart';
import 'package:guarded/core/reusable/RoundedFullWidthButton.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _login_form = GlobalKey<FormState>();
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
                    Image.asset('assets/images/authentication_safe.png', height: 300),
                    Text("Welcome to Guarded", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                  ]
                ),
                Column(
                  children: [
                    InputField(hintText: "Username"),
                    SizedBox(height: 10),
                    InputField(hintText: "Password", isPassword: true,),
                    Align(
                      alignment: Alignment.centerRight, 
                      child: TextButton(onPressed: (){}, child: Text("Forgot password?", style: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),))
                    ),
                    RoundedFullWidthButton(text: "Login"),
                    TextButton(onPressed: (){}, child: Text("Register", style: TextStyle(fontSize: 17, color: Theme.of(context).primaryColor),)),
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