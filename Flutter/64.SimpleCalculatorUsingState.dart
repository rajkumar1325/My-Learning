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

  State<MyHomePage> createState() => MyHomeState(); // best practice to use MyHomePage --> better type-safety.
}

// state for MyHomePage
class MyHomeState extends State<MyHomePage>{ //MyHomePage --> defines the type

  var FirstController = TextEditingController();
  var SecondController = TextEditingController();
  var Result = "Result";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 100, // default is 56 --> increases height of the topbar
        toolbarOpacity: 0.5, //must be between 0 and 1
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          //selectionColor --> bg-color that appears when the text is selected (long-press → select text).
          children: [Text("Calculator", style: TextStyle(color: Colors.lightGreenAccent),)],
        )
      ),

      body: Container(
        color: Colors.blue.shade50,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      )
                  ),
                  controller: FirstController,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)
                      )
                  ),
                  controller: SecondController,
                ),


                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      ElevatedButton(onPressed: (){
                        var no1 = int.tryParse(FirstController.text.toString()) ?? 0; //it returns nullable int. (int? no1)
                        var no2 = int.tryParse(SecondController.text.toString()) ?? 0;
                        var result = no1+no2;

                        Result = result.toString();
                        setState(() {});

                      }, child: Text("Add")),

                      ElevatedButton(onPressed: (){
                        var num1 = int.tryParse(FirstController.text.toString()) ?? 0;
                        var num2 = int.tryParse(SecondController.text.toString()) ?? 0;
                        var diff = num1-num2;

                        setState(() {
                          Result = diff.toString();
                        });

                      }, child: Text("Subtract")),


                      ElevatedButton(onPressed: (){
                        var num1 = int.tryParse(FirstController.text.toString()) ?? 0;
                        var num2 = int.tryParse(SecondController.text.toString()) ?? 0;
                        var mul = num1 * num2;
                        setState(() {
                          Result = mul.toString();
                        });
                      }, child: Text("Multiply")),
                      ElevatedButton(onPressed: (){
                        var num1 = int.tryParse(FirstController.text.toString()) ?? 0;
                        var num2 = int.tryParse(SecondController.text.toString()) ?? 1;
                        var div = num1/num2;
                        setState(() {
                          Result = div.toStringAsFixed(2); //after decimal 2 values only
                        });
                      }, child: Text("Divide")),
                    ],
                  ),
                ),

                Text(Result, style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),)
              ],

            ),
          ),
        ),
      ),

    );
  }
}


