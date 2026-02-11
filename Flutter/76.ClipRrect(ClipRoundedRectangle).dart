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

      body: Container(
        color: Colors.blue,
        child: ClipRRect(

          // borderRadius: BorderRadius.circular(40.0), //Makes all four corners equally round.
          // borderRadius: BorderRadiusGeometry.only(topRight: Radius.circular(23)), //Allows you to round specific corners (e.g., only the top-left and top-right).
          borderRadius: BorderRadiusGeometry.all(Radius.elliptical(34.0, 67.0)),// Creates oval-shaped corners. {X,Y}

            clipBehavior: Clip.antiAlias,
          child: Image.asset('assets/icons/img1.jpg', fit: BoxFit.cover,)
          ),
      ),
    );
  }
}
