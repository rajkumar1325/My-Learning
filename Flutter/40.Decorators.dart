import 'package:flutter/material.dart';


//main function --> runner
void main() {
  runApp(const MyApp());
}


// here we dont have to manage state. --> cant change content in runtime as of stateless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, //remove top-right side strip
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepOrangeAccent),
      ),
      home: const MyHomePage(title: 'Hello World'), //primary page to show when app starts
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


// screen app UI
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    // screen main app --> returns
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Container(
        color: Colors.red.shade200,
        child: Center(
          child: Container(
            // color: Colors.red,
            width: 200,
            height: 200,

            decoration: BoxDecoration(  //if use decoration--> pass color here, not outside
              color: Colors.green,
              // borderRadius: BorderRadius.circular(23)

                //specify specific points
              borderRadius: BorderRadius.only(topLeft: Radius.circular(21), bottomRight: Radius.circular(21)),


              border: Border.all(
                width: 2,
                color: Colors.black
              ),


              boxShadow: [
                BoxShadow(
                  blurRadius: 11,
                  spreadRadius: 5,
                  color: Colors.white
                )
              ]
            ),
          ),
        ),
      )
    );
  }
}




// see image 40
