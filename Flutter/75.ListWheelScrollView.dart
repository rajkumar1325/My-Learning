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
  var _item = ['1', '2', '3', '4', '5', '6', '7'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter App"), backgroundColor: Colors.green),

      body: ListWheelScrollView(
        itemExtent: 100,
        children: _item.map((e) => Container(
            width: 200,
            height: 100,
            alignment: Alignment.center,   // <-- important
            color: Colors.green, //background color for all the boxes.

            child: Text(e, style: const TextStyle(color: Colors.red, fontSize: 22),),
          ),
        ).toList(),


      ),
    );
  }
}
