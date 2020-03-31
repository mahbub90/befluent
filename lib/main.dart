import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static final primaryColor = const Color(0xFFFAEFE3);
  static final buttonColor = const Color(0xFFEC615B);
  static final secondaryButtonColor = const Color(0xFF8B70D4);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
            child: Column(
          children: <Widget>[
            Image(image: AssetImage("assets/login_illustration.png")),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonTheme(
                  minWidth: 280,
                  child: RaisedButton(
                    color: buttonColor,
                    child: Text(
                      "LOG IN",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                      fontFamily: 'North'),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28)),
                    onPressed: () {},
                  ),
                ),
                ButtonTheme(
                  minWidth: 150,
                  child: RaisedButton(
                    color: secondaryButtonColor,
                    child: Text(
                      "REGISTER",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
