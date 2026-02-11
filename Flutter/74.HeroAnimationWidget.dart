// when we click on the iamge --> A new page for Appears with a animation.
// **************************************************************************** main.dart ***********************************************************************************************
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_project/DetailPage.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Detailpage()));
          },
          child: Hero(
              tag: 'Wanda', //It must be same for the detail screen.
              child:
                  Image.asset('assets/icons/img1.jpg', width: 200),
          ),
        ),
      ),
    );
  }

}


// **************************************************************************** Detail.dart ***********************************************************************************************
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detailpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wanda Maximoff"),
        backgroundColor: Colors.blue,
      ),
      body: Hero(
          tag: 'Wanda',
          child: Image.asset('assets/icons/img1.jpg', width: 400,),
      )
    );
  }

}
