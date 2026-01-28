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
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // GETTING USER DATA --> it is a controller that extracts values from text-field and give it to me
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Center(
        child: Container(
          width: 300,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Email field
              TextField(
                // STORING USER ENTERED DATA
                controller: emailText, //we have to place a text editing controller

                decoration: InputDecoration(
                  // enabled when we click on it
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(color: Colors.deepPurple, width: 2),
                  ),
                  // default border.
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.cyanAccent, width: 2),
                  ),
                  // disabled border --> appears only when Text-field is in disabled state
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2)
                  ),

                  // suffix text --> text added at the end
                  suffixText: "User Exist",

                  // suffix icon --> use IconButton so to add function on click
                  suffixIcon: IconButton(onPressed: ()=>print("Icon pressed"), icon: Icon(Icons.remove_red_eye, color: Colors.red,)),

                  //prefix Icon -- simple ICON
                  prefixIcon: Icon(Icons.mail),

                ),
              ),


              // Password field
              TextField(
                keyboardType: TextInputType.number, //It automatically changes the keyboard when this Text-field enabled
                controller: passText, //Extracting user data
                obscureText: true, //used to view like encypted password ****
                obscuringCharacter: '*', //chanage default character

                decoration: InputDecoration(
                  hintText: 'Enter your Password', //just like placeholder

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  fillColor: Colors.lightBlue,
                ),
              ),
              

              // function that is used to extract the data when pressed
              ElevatedButton(onPressed: (){
                String userEmail = emailText.text.toString();
                String userPassword = emailText.text.toString();

                print('Email is ${userEmail} and user Password is ${userPassword}');
              }, child: Text("Login"))

            ],
          ),
        ),
      ),
    );
  }
}
