import 'dart:async';

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
  bool isFirst = true; //variable for toggle

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () => Reload() ); //Reload fn call
  }

  void Reload(){
    setState(() {
      isFirst = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        backgroundColor: Colors.green,
      ),

      body: Column(
        children: [
          AnimatedCrossFade(
            duration: Duration(seconds: 1),

            firstChild: Container(
              width: 200,
              height: 200,
              color: Colors.grey,
            ),
            secondChild: Image.asset('assets/icons/img1.jpg'),

            crossFadeState: isFirst? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),

          // SizedBox(height: 10,),
          // ElevatedButton(onPressed: () {
          //   setState(() {
          //     if(isFirst){
          //       isFirst = false;
          //     }
          //     else{
          //       isFirst = true;
          //     }
          //   });
          // }, child: Text("Click to animate"))
        ],
      ),
    );
  }

}
