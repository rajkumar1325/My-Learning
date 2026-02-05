// Used to write in a Article Way 
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

      body: RichText(
        text: TextSpan(  //it works on multiple span

          // default styling
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.normal,
            color: Colors.grey,
          ),


          children: <TextSpan>[      // array of data-type text-span
            TextSpan(text: "Hello"),
            TextSpan(text: "World", style: TextStyle(fontSize: 44, color: Colors.red))
          ],
        ),
      ),
    );
  }
}
