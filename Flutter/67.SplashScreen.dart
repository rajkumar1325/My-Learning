// Working : ---> SplashScreen waits for 3 second then MyHomePage appears.


// use timer class under init to hold an event.

// *************************************************************  SPLASH SCREEN  **************************************************************
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';//To use Timer class
import 'package:my_project/main.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement( // it replaces the SplashScreen with MyHomePage after 1st run of app
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),  ---> it doesnt need any appBar
      body: Container(
        color: Colors.lime.shade200,
        child: Center(
          child: Text(
            "Espresso",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
        ),
      ),
    );
  }
}



// ***************************************************************** Main.dart File *****************************************************************
import 'package:flutter/material.dart';
import 'package:my_project/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Splashscreen(), // Starting page.
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => MyHomeState(); // best practice to use MyHomePage --> better type-safety.
}

class MyHomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter App")),

      body: Center(
        child: Text(
              "Hello World",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
            ),
      ),
    );
  }
}




