// IF SIZE OF THE WIDGET IS MORE THAN THE SCREEN SIZE, AND YOU DONT WNNA SCROLL IT --> JUST WRAP IT.
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_project/Widgets/PrimaryBtn.dart';

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

      body: Container(
        width: double.infinity, //takes complete width --> so widget aligns it to center itself.
        child: Wrap(
          direction: Axis.horizontal, //defines the direction
          spacing: 11,
          runSpacing: 34,
          // alignment: WrapAlignment.center,
          alignment: WrapAlignment.spaceEvenly,
          children: [
            Container(
              height: 200,
              width: 150,
              color: Colors.red,
              child: Text("1", style: TextStyle(fontSize: 66),),
            ),

            Container(
              height: 200,
              width: 150,
              color: Colors.lightGreen,
              child: Text("2", style: TextStyle(fontSize: 66),),
            ),

            Container(
              width: 150,
              height: 200,
              color: Colors.grey,
              child: Text("3", style: TextStyle(fontSize: 66),),
            ),

            Container(
              height: 200,
              width:150,
              color: Colors.blue,
              child: Text("4", style: TextStyle(fontSize: 66),),
            ),

            Container(
              height: 200,
              width:150,
              color: Colors.green,
              child: Text("5", style: TextStyle(fontSize: 66),),
            )
          ],
        ),
      ),

    );
  }
}



