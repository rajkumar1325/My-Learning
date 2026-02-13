/// Box grows bigger and also changes color along with the animation
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

class MyHomeState extends State<MyHomePage> with SingleTickerProviderStateMixin{  //adding another class using 'with'
  late Animation animation; //creating an object | late: means we are going to declare it later.
  late Animation colorAnimation; //color Switching variable

  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(vsync: this, duration: Duration(seconds: 4)); //'this' --> referes to SingleTickerProviderStateMixin

    animation = Tween(begin:0.0, end:200.0).animate(animationController); //start and end
    colorAnimation = ColorTween(begin: Colors.red, end: Colors.green).animate(animationController); //color animation

    animationController.addListener( (){ ///listener records from 0 to 200 during an interval of 4sec
      print(animation.value);
      setState(() {});
    } );

    animationController.forward(); //run the animation controller
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter App"), backgroundColor: Colors.green),

      body: Container(
        width: animation.value,
        height: animation.value,
        // color: Colors.red,
        color: colorAnimation.value,
      ),

    );
  }
}
