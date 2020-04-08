import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Gilroy'),
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final primaryColor = const Color(0xFFFAEFE3);
    final textColorOrange = const Color(0xFFFF5454);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Container(
            width: screenWidth,
            alignment: Alignment.center,
            /*decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/login_illustration.png"),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),*/
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Positioned(
                  top: 50,
                  width: screenWidth,
                  child: Image.asset(
                    "assets/login_illustration.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 10),
                      child: RichText(
                        text: TextSpan(
                            text: "Dryve",
                            style: TextStyle(
                                color: textColorOrange,
                                fontSize: 30,
                                fontFamily: "Gilroy",
                                fontWeight: FontWeight.w700),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Academy',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontFamily: "Gilroy"))
                            ]),
                      ),
                    ),
                    Text(
                      "Start your journey today",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  width: screenWidth,
                  bottom: screenHeight / 10,
                  child: Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ButtonTheme(
                        minWidth: 280,
                        child: RaisedButton(
                          color: Color(0xFFEC615B),
                          child: Text(
                            "LOG IN",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28)),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 150,
                      child: RaisedButton(
                        color: Color(0xFF8B70D4),
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        onPressed: () {},
                      ),
                    ),
                  ]),
                ),
              ],
            )),
      ),
    );
  }
}
