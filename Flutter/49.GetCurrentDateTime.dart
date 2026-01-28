import 'package:flutter/material.dart';

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

    var currTime = DateTime.now(); //gives current date and time whenever build fn is called
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Column(
        children: [
          Text('Current Time is ${currTime}'),
          ElevatedButton(onPressed: (){
            setState(() {} );  //setState() --> rebuilds the current app again on every click.
          }, child:  Text("Click me")),
          
          Text("Year is ${currTime.year}"), //provides current year
          Text("Month is ${currTime.month}"), // it provide current month index
          Text("current day (eg:4,5)  is ${currTime.day}"),
          Text("current day (eg:WED, SAT) is ${currTime.weekday}"), //provides index (1->monday, 2->tuesday...)
        ],
      ),
    );
  }
}
