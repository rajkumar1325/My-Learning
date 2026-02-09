// Its a UI, that is used to select a value from a specific range.

import 'package:flutter/material.dart';

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

  RangeValues userValues = RangeValues(0, 100); //starting and ending range

  @override
  Widget build(BuildContext context) {
    // LABELS --> its under build b/c it have to rebuild each time.
    RangeLabels divisionLabels = RangeLabels(userValues.start.toString(), userValues.end.toString());

    return Scaffold(
      appBar: AppBar(
          title: Text("Flutter App"),
        backgroundColor: Colors.green,
      ),
      
      body: RangeSlider(
          values: userValues,

          // changing color of the Slider
          activeColor: Colors.yellow,
          inactiveColor: Colors.blue,
          overlayColor: WidgetStateProperty.all( //temrorary color, activate on touch
            Colors.red.withValues(alpha: 77), //handle opacity
          ),

          // split the division into 10 pieces.
          labels: divisionLabels,
          divisions: 10,

          // defining minimum and maximum values...
          min: 0,
          max: 100,

          // newValue : it changes its values according to the user input/drag
          onChanged: (newValue){
            userValues = newValue;

            print("${newValue.start} : ${newValue.end}");

            // print("$newValue.start : $newValue.end"); --> Wrong --> newValue interpolated but .start works as plain text

            setState(() {}); //rebuild
          }),
    );
  }
}
