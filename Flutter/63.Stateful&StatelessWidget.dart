// SIMPLE COUNTER APP USING STATEFUL FUNCTION.
// ----> stateful function --> used when we have to reflect the updated output on the UI.
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
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(), //launcher page/ main page
    );
  }
}


class MyHomePage extends StatefulWidget{
  @override
  // State<StatefulWidget> createState() {
  //   return MyHomeState();
  // }

  State<StatefulWidget> createState() => MyHomeState(); //as we have to return only 1 line, can be written like this.
}


// state for MyHomePage
class MyHomeState extends State<MyHomePage>{ //MyHomePage --> defines the type
  var counter =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful")
      ),

      body: Column(
        children: [
          Text('counter: ${counter}', style: TextStyle(fontSize: 34),),
          ElevatedButton(onPressed: (){
            setState(() {
              counter++;
            });
          }, child: Text("Increment Count"))
        ],
      ),

    );
  }

}

