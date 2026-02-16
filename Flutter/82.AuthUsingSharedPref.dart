// if user 1st time visit / logout State --> SplashScreen --> LoginScreen --> Dashboard
// if user loggedIn --> SplashScreen --> Dashboard

// ........................................................................... SplashScreen.dart ..............................................................................................
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';//To use Timer class
import 'package:my_project/main.dart';
import 'package:my_project/userDashboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => SplashscreenState();
}

class SplashscreenState extends State<Splashscreen> {
  static const String KEYLOGIN = "login";

  @override
  void initState() {
    super.initState();

    whereToGo(); // fn Call
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),  ---> it doesnt need any appBar
      body: Container(
        color: Colors.lime.shade200,
        child: Center(
          child: Text(
            "My APP",
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


  void whereToGo() async {
    var sharedPref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedPref.getBool(KEYLOGIN);


    Timer(Duration(seconds: 3), () {
      if(isLoggedIn != null){
        if(isLoggedIn){
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => userDashboard())
          );
        }
        // when user--> logout and key=false
        else{
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginPage())
          );
        }
      }

      // when user 1st opens the app, and hasnt login yet
      else{
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())
        );
      }



    });
  }


}

  
// ........................................................................... main.dart (LoginScreen) ..............................................................................................
import 'package:flutter/material.dart';
import 'package:my_project/SplashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:my_project/userDashboard.dart';

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
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => MyHomeState();
}

class MyHomeState extends State<LoginPage> {
  var userEmail = TextEditingController();
  var userPass = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter App"), backgroundColor: Colors.green),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.people,
              size: 84,
              color: Colors.blue,
            ),

            TextField(controller: userEmail,
              decoration: InputDecoration(label: Text("Enter your Email"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23))),),
            TextField(controller: userPass,
              obscureText: true,
              decoration: InputDecoration(label: Text("Enter your Password"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23))),),

            ElevatedButton(onPressed: () async{

              // if successfullly loggedin --> credentials true.
              var sharePref = await SharedPreferences.getInstance(); //create object
              sharePref.setBool(SplashscreenState.KEYLOGIN, true); //KEYLOGIN --> variable from splashScreen


              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => userDashboard()));
              });
            }, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}

  
// ........................................................................... userDashboard.dart (HomeScreen) ..............................................................................................
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class userDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UserDashboard'),
        backgroundColor: Colors.grey,
      ),
      body: Center(child: Icon(Icons.home_filled, size: 180, color: Colors.red.shade200,)),
    );
  }

}
  
