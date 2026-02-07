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

  // variable to store the text-input
  var FirstNumber = TextEditingController();
  var SecondNumber = TextEditingController();
  double Result =0;
  var ArithmeticOperator;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 100, // default is 56 --> increases height of the topbar
        toolbarOpacity: 0.5, //must be between 0 and 1
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,

          //selectionColor --> bg-color that appears when the text is selected (long-press → select text).
          children: [Text("Calculator", style: TextStyle(color: Colors.lightGreenAccent),)],
        )
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 2,
        children: [
          TextField(
            controller: FirstNumber, //store user input

            decoration: InputDecoration(
              fillColor: Colors.grey,
              filled: true,

              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),borderRadius: BorderRadius.circular(23)),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.greenAccent, width: 3), borderRadius: BorderRadius.circular(23)),

              prefixIcon: Icon(Icons.keyboard),
              hintText: "Enter 1st Number", //placeholder
            ),
          ),

          TextField(
            controller: SecondNumber,

            decoration: InputDecoration(
              fillColor: Colors.grey,
              filled: true,

              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),borderRadius: BorderRadius.circular(23)),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.greenAccent, width: 3), borderRadius: BorderRadius.circular(23)),

              prefixIcon: Icon(Icons.keyboard),
              hintText: "Enter 2nd Number", //placeholder
            ),
          ),

          // RESULT
          SizedBox(height: 21,), //used for spacing
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade50,
                    border: Border.all(color: Colors.lime),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Operator : ${ArithmeticOperator}'),
                  )
              ),

            ],
          ),



          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen.shade50,
                    border: Border.all(color: Colors.lightGreenAccent),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Result is : ${Result}'),
                  )
              ),

            ],
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green.shade200,
                      borderRadius: BorderRadius.circular(21),
                      border: Border.all(color: Colors.black, width: 1)
                    ),

                    child: IconButton(
                        onPressed: Add,
                        icon: Text("+", style: TextStyle(fontSize: 43),)),
                  ),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(21),
                        border: Border.all(color: Colors.black, width: 1)
                    ),

                    child: IconButton(
                        onPressed: Subtract,
                        icon: Text("-", style: TextStyle(fontSize: 43),)),
                  ),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(21),
                        border: Border.all(color: Colors.black, width: 1)
                    ),

                    child: IconButton(
                        onPressed: Multiply,
                        icon: Text("X", style: TextStyle(fontSize: 43),)),
                  ),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(21),
                        border: Border.all(color: Colors.black, width: 1)
                    ),

                    child: IconButton(
                        onPressed: Divide,
                        icon: Text("/", style: TextStyle(fontSize: 43),)),
                  ),
                ],
              ),
            ),

          // RESULT
          Container(
            width: 300,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(21),
                border: Border.all(color: Colors.black, width: 2)
            ),

            child: IconButton(
                onPressed: Calculate,
                icon: Text('=', style: TextStyle(fontSize: 56),)),
          ),

        ],
      ),
    );
  }



  // HELPER FN --> we can use arithematic operator over it.
  double num1() => double.tryParse(FirstNumber.text) ?? 0; //as tryParse accept only text.
  double num2() => double.tryParse(SecondNumber.text) ?? 0;

  void Add(){
    final ans  = num1() + num2();
    ArithmeticOperator = '+';
    Result = ans;
  }
  void Subtract(){
    final ans = num1()-num2();
    ArithmeticOperator = '-';
    Result = ans;
  }
  void Multiply(){
    final ans = num1()*num2();
    ArithmeticOperator = 'X';
    Result = ans;
  }
  void Divide(){
    final ans = num1()/num2();
    ArithmeticOperator = '/';
    Result = ans;
  }
  void Calculate(){
    setState(() {
      ArithmeticOperator;
      Result;
    });
  }
}


