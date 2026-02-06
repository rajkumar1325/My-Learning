// -	Used when we wnna use the Flutter inbuilt icons.
// -	We can also use any .png image into icon.
// -	Have to use to Icons class.
//  -- Note : Icon doesnt have clickable functionality --> Flutter separates visuals and interaction strictly.




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

      body: Center(
        child:
        // Icon(Icons.add_business_rounded, size: 100, color: Colors.red),

        IconButton(onPressed: (){print("Hello Pressed");}, icon: Icon(Icons.play_arrow), iconSize: 100,),
        
      ),
    );
  }
}
