
// ******************************************************* IntroPage.dart ******************************************************************
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/main.dart';

class Intropage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Introduction"), backgroundColor: Colors.blue),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),


            // Whenever we click --> Routes back to MyHomePage.
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}


// ************************************************************** Driver App (Main.dart) ***********************************************
import 'package:flutter/material.dart';
import 'package:my_project/IntroPage.dart';

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
      // home: MyHomePage(),
      home: Intropage(), //launches 'Intropage' at the starting
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello World",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
            ),

            // whenever we click over this button --> Routes to IntroPage.
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Intropage();
                    },
                  ),
                );
              },
              child: Text("Go to Intro"),
            ),
          ],
        ),
      ),
    );
  }
}

