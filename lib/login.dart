import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() {
  runApp(
    MaterialApp(
      home: Login(),
    ),
  );
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.all((60))),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Icon(
                  Icons.today_outlined,
                  color: Colors.white,
                  size: 90,
                ),
              ),
            ),
            Text(
              'TodoWoo',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Padding(padding: EdgeInsets.all((50))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SignInButton(
                  Buttons.GoogleDark,
                  text: 'Sign in with Google',
                  onPressed: () {},
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all((10))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SignInButton(
                  Buttons.GitHub,
                  text: 'Sign in with GitHub',
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
