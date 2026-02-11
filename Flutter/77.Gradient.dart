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
      appBar: AppBar(title: Text("Flutter App"), backgroundColor: Colors.green),

      body: Column(
        children: [

          // LINEAR-GRADIENT
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.green, Colors.yellow],
                // begin: Alignment.topLeft, //Alignment uses a coordinate system relative to the center of the widget
                  begin: FractionalOffset(1.0, 0.0), //FractionalOffset uses a coordinate system relative to the top-left corner.
                  end: Alignment.bottomRight,
                stops: [0.0, 0.4, 1.0],  //define where each color starts/ends
                tileMode: TileMode.mirror
              )
            ),
          ),

          // RADIAL-GRADIENT
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.blue, Colors.green, Colors.yellow],
                  center: Alignment.center, // Where the "sun" starts {mainly from corners}
                  radius: 0.4, // How far the gradient spreads
                  stops: [0.0, 0.4, 1.0],  //define where each color starts/ends
                  tileMode: TileMode.clamp,
                )
            ),
          ),

          // SWEEP-GRADIENT
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                gradient: SweepGradient(
                  colors: [Colors.blue, Colors.green, Colors.red],
                  startAngle: 0.2,
                  endAngle: 0.8,
                  stops: [0.0, 0.4, 1.0],  //define where each color starts/ends
                  tileMode: TileMode.repeated
                )
            ),
          ),
        ],
      ),
    );
  }
}
