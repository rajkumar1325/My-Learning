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
      home: MyHomePage(), //launcher page/ main page
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
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 100,
        // default is 56 --> increases height of the topbar
        toolbarOpacity: 0.5,
        //must be between 0 and 1
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          //selectionColor --> bg-color that appears when the text is selected (long-press → select text).
          children: [
            Text(
              "Hello World",
              style: TextStyle(color: Colors.lightGreenAccent),
            ),
          ],
        ),
      ),

      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 200,
          minWidth: 34,
          maxHeight: 100,
          minHeight: 23
        ),
        child: Text("Hello World Hello World Hello World Hello World Hello World Hello World",
          style: TextStyle(fontSize: 21), overflow: TextOverflow.fade,),
      ),
    );
  }
}
