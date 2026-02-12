// use of map in dart. just as JavaScript
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

  var arrNames = [
    "Raj",
    "Rohan",
    "Sohan",
    "Mohan",
    "Soniya",
    "Moniya",
    "Roniya",
    "Riya",
    "Priya",
    "Supriya"
  ];

  var dataUser = [
    {"name": "Raj", "mobile": "9876543210", "qualification": "B.Com"},
    {"name": "Soniya", "mobile": "9812345678", "qualification": "M.Tech"},
    {"name": "Rohan", "mobile": "9123456789", "qualification": "MBA"},
    {"name": "Priya", "mobile": "9988776655", "qualification": "MBBS"},
    {"name": "Sohan", "mobile": "9765432109", "qualification": "B.Sc"},
    {"name": "Moniya", "mobile": "9555444333", "qualification": "B.Ed"},
    {"name": "Mohan", "mobile": "9444333222", "qualification": "PhD"},
    {"name": "Roniya", "mobile": "9333222111", "qualification": "BCA"},
    {"name": "Supriya", "mobile": "9222111000", "qualification": "MCA"},
    {"name": "Amit", "mobile": "9111000999", "qualification": "B.A"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter App"), backgroundColor: Colors.green),

      // // SIMPLE DATA PRINTING USING MAPPING.
      // body: Container(
      //   child: ListView(
      //     children: arrNames.map( (e) {
      //       return Container(
      //         child: Text(e),
      //       );
      //     } ).toList(), //note to add .toList()  --> it makes the array iterable.
      //   ),
      // ),



    // // MAPPING OF THE OBJECT DATA-TYPE
      body: Container(
        child: ListView(
          children: dataUser.map( (val){
            return ListTile(
              leading: Icon(Icons.account_balance),
              title: Text(val['name'].toString() ),
              subtitle: Text( val['mobile'].toString() ),
              trailing: Text( val['qualification'].toString() ),

            );
          } ).toList(),
        ),
      ),

    );
  }
}








