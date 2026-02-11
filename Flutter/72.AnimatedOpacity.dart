// On button click ---> container fades-out and fade-in 

import 'package:flutter/material.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => MyHomeState();
}

class MyHomeState extends State<MyHomePage> {
  var _myOpacity = 1.0;   // creating private variable
  var isVisible = true; //for toggle effect
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        backgroundColor: Colors.green,
      ),

      body: Column(
        children: [
          AnimatedOpacity(
            opacity: _myOpacity,
            duration: Duration(seconds: 1),

            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
          ),

          SizedBox(height: 10,),

          ElevatedButton(onPressed: () {
            setState(() {
              if(isVisible){
                _myOpacity = 0.0;
                isVisible = false;
              }
              else{
                _myOpacity = 1.0;
                isVisible = true;
              }
            });
          }, child: Text("Click to animate"))
        ],
      ),
    );
  }

}
