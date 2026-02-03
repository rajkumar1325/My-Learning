// **************************************************************CUSTOM WIDGET****************************************************************************
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {

  // variables defining
  final String BtnName;
  final Icon? icon; //   ? : means it can be NULL
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback?
  callback; // used to link the fn that is defined at the time of execution.

  // Constructor --> press Alt/ctrl + enter
  PrimaryBtn({
    required this.BtnName, //as name must be passed as a argument
    this.icon,
    this.bgColor = Colors.lightGreen, //default color
    this.textStyle,
    this.callback,
  }); //fn that doesnt take Arguments neither returns anything




  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        //we mainly dont define it, as button on different place have diff fn but the UI is same.
        callback!(); // it cant be nullm --> we have to always send
      },
      child: icon != null
          ? Row(
              children: [
                icon!,
                Text(BtnName, style: textStyle),
              ],
            )
          : Text(BtnName, style: textStyle),



      // Customising Styles for the button
      style: ElevatedButton.styleFrom(
        shadowColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.only(
            topLeft: Radius.circular(21),
            topRight: Radius.circular(21),
          ),
        ),
      ),
    );
  }
}






// *************************************************** MAIN DRIVER FUNCTION (where we call the customised widget)**************************************************************
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_project/Widgets/PrimaryBtn.dart';

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
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Column(
        children: [
          PrimaryBtn(BtnName: "Click me Over", icon: Icon(Icons.lock), bgColor: Colors.red ,callback: ()=>{
            print("Login SuccessFully")
          },),
          
          PrimaryBtn(BtnName: "Play", callback: (){
            print("Second button clicked");
          },)
        ],
      ),
    );
  }
}



