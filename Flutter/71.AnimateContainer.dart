// Whenevr I click over the button --> Animation Starts.

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

  // creating private variable
  double _width = 200.0;
  double _height = 100.0;
  Color _bgColor = Colors.grey;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title: Text("Flutter App"),
        backgroundColor: Colors.green,
      ),
      
      body: Column(
        children: [
          AnimatedContainer(
              duration: Duration(seconds: 1),
            height: _height,
            width: _width,
            // color: _bgColor,

            curve: Curves.easeInOut, //handle the rate of change of animation.

            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(23),
              color: _bgColor,
            ),
          ),
          
          SizedBox(height: 10,),
          
          ElevatedButton(onPressed: (){
            // _width = 100.0;
            // _height = 200.0;

            // toggle code
            if(_width==200 && _height==100){
              _width = 100;
              _height = 200;
              _bgColor = Colors.greenAccent;
            }
            else{
              _width = 200;
              _height = 100;
              _bgColor = Colors.blue;
            }

            setState(() {});
          }, child: Text("Click to animate"))
        ],
      ),
    );
  }

}
