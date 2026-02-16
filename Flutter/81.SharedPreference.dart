// data is stored at the appData of the app. 
// used to keep the data until user logout or delete the appData.

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

class MyHomeState extends State<MyHomePage>{
  var textInput = TextEditingController();
  var input='';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter App"), backgroundColor: Colors.green),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(controller: textInput, decoration: InputDecoration(label: Text("Enter your text"), border: OutlineInputBorder(borderRadius: BorderRadius.circular(23))),),

            ElevatedButton(onPressed: () async{
              setState(() {input = textInput.text.toString();});
              var sharedPref = await SharedPreferences.getInstance(); //creating an object of SharedPreference to store the data.
              sharedPref.setString("name", input);
            }, child: Text("Save")),

            Text('input :${input}', style: TextStyle(fontSize: 23),)
          ],
        ),
      ),
    );
  }

  void getValue() async{
    var pref = await SharedPreferences.getInstance();
    var getName = pref.getString('name');
    setState(() {
      input = getName?? "No name Saved";
    });
  }
}
