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

class MyHomeState extends State<MyHomePage> with SingleTickerProviderStateMixin { //adding another class using 'with'
  var radiusList = [10.0, 30.0, 50.0, 70.0, 90.0, 110.0, 130.0, 150.0];

  // late Animation _animation; //creating an object | late: means we are going to declare it later.
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(vsync: this,
        duration: Duration(seconds: 4),
        lowerBound: 0.5); //'this' --> references to SingleTickerProviderStateMixin
    // _animation = Tween(begin:0.0, end:1.0).animate(_animationController); //start and end state/size

    _animationController.addListener(() {
      ///listener records from 0 to 200 during an interval of 4sec
      // print(_animation.value);
      setState(() {});
    });
    _animationController.forward(); //run the animation controller
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter App"), backgroundColor: Colors.green),

      body: Center(
        child: Stack(
          alignment: Alignment.center, // Center children relative to each other
          children: [
            buildCircle(radiusList[0]),
            buildCircle(radiusList[1]),
            buildCircle(radiusList[2]),
            buildCircle(radiusList[3]),
            buildCircle(radiusList[4]),
            buildCircle(radiusList[5]),
            buildCircle(radiusList[6]),
            buildCircle(radiusList[7]),
            Icon(Icons.call_end),
          ]
        ),
      ),

    );
  }


  Widget buildCircle(radius) {
    return Container(
      // As animation controller also Generate values from 0 to 1, we directly use it
      width: radius * _animationController.value,
      height: radius * _animationController.value,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          // color: Colors.black.withAlpha(255), //color with opacity --> withAlpha = 0 to 255 --> 0=transparent
          color: Colors.blue.withValues(alpha: 1.0 -
              _animationController.value) //opacity down as we move forward
      ),
    );
  }


}
