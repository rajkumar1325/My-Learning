// SplashScreen appears first for 3 seconds --> Asks for username --> show input name into dashboard screen.

// *********************************************************************** SPLASH.DART ***********************************************************************************
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



// ***************************************************************************** DASHBOARD.DART ***************************************************************************
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget{
  var nameFromHome;

  // CONSTRUCTOR
  Dashboard(this.nameFromHome, {super.key}); //when Dashboard class called, it require a value. then value is stored here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Dashboard"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome $nameFromHome", style: TextStyle(fontSize: 32),), //parsed value is shown here.
          ],
        ),
      ),
    );
  }

}



// ***************************************************************************** MAIN.DART ***************************************************************************
import 'package:flutter/material.dart';
import 'package:my_project/Dashboard.dart';
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
      home: Splashscreen(), //SplashScreen opens at starting of the app.
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => MyHomeState(); // best practice to use MyHomePage --> better type-safety.
}

class MyHomeState extends State<MyHomePage> {
  var userInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Flutter App"),
        backgroundColor: Colors.green,

      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),),

            SizedBox(
              width: 300,
              child: TextField(
                cursorWidth: 3,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2)
                  )
                ),
                controller: userInput,
              ),
            ),


            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard(userInput.text.toString())),);
            }, child: Text('Go on')),
          ],
        ),
      ),
    );
  }
}

