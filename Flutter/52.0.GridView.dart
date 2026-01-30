import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Column(
        children: [
          // Container(
          //   height: 300,
          //   child: GridView.count(
          //     crossAxisCount: 5,
          //     children: [
          //       Container(color: Colors.lightGreenAccent),
          //       Container(color: Colors.red),
          //       Container(color: Colors.deepPurple),
          //       Container(color: Colors.blue),
          //       Container(color: Colors.cyanAccent),
          //     ],
          //   ),
          // ),

          // Container(height: 10),
          
          Container(
            height: 300,
            child: GridView.extent(
                maxCrossAxisExtent: 100, //100 is size. not count! --> 100 size of each box is made and fitted in the blank until conplete space full.
              children: [
                Container(color: Colors.lightGreenAccent),
                Container(color: Colors.red),
                Container(color: Colors.deepPurple),
                Container(color: Colors.blue),
                Container(color: Colors.cyanAccent),
                Container(color: Colors.lightGreen),
                Container(color: Colors.lightBlue),
                Container(color: Colors.deepOrange),
                Container(color: Colors.blue.shade200),
                Container(color: Colors.grey),
              ],
            ),
          )
        ],
      ),
    );
  }
}
