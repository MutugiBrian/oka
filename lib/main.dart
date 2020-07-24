import 'dart:async';

import 'package:flutter/material.dart';

import 'package:oka/config.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: brown,
        accentColor: green,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => print("Splash Done"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(decoration: BoxDecoration(color: green)),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: yellow,
                          radius: 50.0,
                          child: Icon(
                            Icons.wifi,
                            color: brown,
                            size: 40.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        Text(
                          appName,
                          style: TextStyle(
                            color: white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(
                        backgroundColor: brown,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      Text(
                        splashText,
                        style: TextStyle(color: white, fontSize: 14.0),
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
