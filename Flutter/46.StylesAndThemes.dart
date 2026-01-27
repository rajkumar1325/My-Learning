import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application. ----> APP DEFAULT SETTING
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      // provides theme to complete app, not on single page.
      theme: ThemeData(
        // colorScheme: .fromSeed(seedColor: Colors.red),   //default --> from "useMaterial3" library

        primarySwatch: Colors.green, //top-bar color
        useMaterial3: false, //have to make it false to use "primarySwatch"


        // defining GLOBAL themes
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 33, fontStyle: FontStyle.normal),
          headlineMedium: TextStyle(fontSize: 23, fontStyle: FontStyle.italic),
        )
      ),
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




// PAGE-STARTING
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,   //current page theme

        title: Text(widget.title)  //takes title using widget
        // title: Text("Raj Kumar"), //-------> direct giving title
      ),

      body: Column(
        children: [
          Text("This is the heading1", style: Theme.of(context).textTheme.headlineLarge, ), // Theme.of(context)  --> provide access to root
          Text("This is the heading2", style: Theme.of(context).textTheme.headlineMedium),


          // copyWith --> used to extend the theme.    /// note: use ! --> as it can return null
          Text("This is the heading3", style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.red)),
          Text("This is the heading4", style: Theme.of(context).textTheme.headlineMedium),
        ],
      ),
    );
  }
}

