// A Splash screen --> user input screen --> Result display

// **************************************************************************** SPLASH SCREEN {SplashScreen.dart}********************************************************************************
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';//To use Timer class
import 'package:my_project/main.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement( // it replaces the SplashScreen with MyHomePage after 1st run of app
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),  ---> it doesnt need any appBar
      body: Container(
        color: Colors.lime.shade200,
        child: Center(
          child: Text(
            "BMI Calculator",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}


// **************************************************************************** Main SCREEN {main.dart}********************************************************************************
import 'package:flutter/material.dart';
import 'package:my_project/SplashScreen.dart';
import 'package:my_project/Widgets/BmiResult.dart';

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
      home: Splashscreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => MyHomeState();
}

class MyHomeState extends State<MyHomePage> {
var weightController = TextEditingController();
var heightInchesController = TextEditingController();
var heightMeterController = TextEditingController();

// result = weight/ (height*height)
double Result=0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title: Text("Flutter App"),
        backgroundColor: Colors.green,
      ),
      
      body: SingleChildScrollView(
        child: Center(
          // Text
          child: SizedBox(
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
        
                // intro-text
                RichText(text: TextSpan(
                  children: <TextSpan> [
                    TextSpan(text: "Welcome to our", style: TextStyle(fontSize: 21, color: Colors.blue)),
                    TextSpan(text:' BMI ', style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold, color: Colors.green)),
                    TextSpan(text: "Calculator", style: TextStyle(fontSize: 21, color: Colors.blue)),
                  ],
                )),
        
                Text("A simple ratio used to estimate whether a person’s weight is appropriate for their height.",
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40,), //space
        
                // weight-field
                TextField(
                  controller: weightController,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(label: Text("Enter Weight in kg"),),
                ),
                SizedBox(height: 40,), //space
        
                //   height-field
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: heightMeterController,
                        keyboardType: TextInputType.numberWithOptions(decimal: true),
                        decoration: InputDecoration(label: Text("Enter Height in feet")),
                      ),
                    ),
        
                    SizedBox(width: 10,),
        
                    Expanded(
                      child: TextField(
                        controller: heightInchesController,
                        keyboardType: TextInputType.numberWithOptions(decimal: true),
                        decoration: InputDecoration(label: Text("Enter height in inches")),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 50,), //space
        
                OutlinedButton(onPressed: (){
                  BmiCalculator();
                }, child: Text("Click me to Calculate")),

        
              ],
            ),
          ),
        ),
      ),
    );
  }

  void BmiCalculator(){

    // converting input-values into integer.
    var weight = int.tryParse(weightController.text.toString());
    var heightFeet = int.tryParse(heightMeterController.text.toString());
    var heightInches = int.tryParse(heightInchesController.text.toString());


    // popup error message
    if(weight==null || heightFeet==null || heightInches==null){ //if any one is blank... --> Invalid
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Enter all the required values to proceed further"),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }


    else{
      // it must not be null --> so use !
      double heightMeter = (heightFeet!*0.3048) + (heightInches!*0.0254);
      Result = weight!/(heightMeter*heightMeter);

      Navigator.push(context, MaterialPageRoute(builder: (context) => BmiResult(Result))); //PageRoute
    }

    Text('$Result', style: TextStyle(fontSize: 23, color: Colors.red),);

  }
}



// **************************************************************************** Result SCREEN {BmiResult.dart}********************************************************************************
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget{
  final double bmiResult;

  // Constructor
  const BmiResult(this.bmiResult, {super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result Dashboard"),
        backgroundColor: Colors.green.shade300,
      ),




      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${bmiResult.toStringAsFixed(1)}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 55),),

              SizedBox(height: 10,),

              Text(getBmiMessage(bmiResult),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),),
            ],
          )),
    );
  }


  String getBmiMessage(double bmi) {
    if (bmi < 18.5) {
      return "Your BMI is low. Improve it with proper Nutrients.";
    } else if (bmi < 25) {
      return "Your BMI is Good. Maintain it.";
    } else if (bmi < 30) {
      return "Your BMI is high. Loose weight.";
    } else {
      return "Your BMI is very high. do you wnna Die!, reduce it now..";
    }
  }

}
