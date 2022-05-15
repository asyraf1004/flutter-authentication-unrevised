import 'package:flutter/material.dart';
import 'auth_services.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anonymous Auth"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            await AuthServices.signInAnonymous();
          },
          child: Text("Sign in Anonymous"),
        ),
      ),
    );
  }
}
