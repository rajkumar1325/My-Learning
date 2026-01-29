// use DataType "DateTime" for date and "TimeOfDay" for storing time.

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

  DateTime? selectedDate; //Variable for taking over global Access
  TimeOfDay? selectedTime; //Global Time Variable

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Column(
        children: [
          Text("Select Date"),

          // DATE Button
          ElevatedButton(onPressed: () async {
            DateTime? datePicked = await showDatePicker( //await --> wait for the response. (for await, have to use async)
                context: context,
                initialDate : DateTime.now(), //current date and time
                firstDate: DateTime(2021, 4), //starts from 4th month of 2021 
                lastDate: DateTime(2030)); //end date till we are able to select.

                // print('Selected date is ${datePicked}'); //2024-03-21 00:00:00.000

                if(datePicked != null){
                  // print(' day is ${datePicked.day}, Month ${datePicked.month}, year ${datePicked.year}'); //day is 7, Month 1, year 2026

                  setState(() { //rebuild the app, As something is changed
                    selectedDate = datePicked; //copy the date, to get Global Access.
                  });
                }

          }, child: Text("Show Date")),


          // TIME Button
          ElevatedButton(onPressed: () async{
            TimeOfDay? timePicked = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.dial, //select the UI.
            ); //current time

            if(timePicked != null){
              setState(() {
                // print('Hour is ${timePicked.hour} and Minute is ${timePicked.minute}'); //Hour is 17 and Minute is 25
                selectedTime = timePicked;
              });
            }
          }, child: Text("Show Time")),

          Text('Day is ${selectedDate?.day}, month is ${selectedDate?.month} and year is ${selectedDate?.year}'), //as it can return null so use ?
          Text('Time selected is ${selectedTime?.hour} ${selectedTime?.minute}'),
        ],
      ),
    );
  }
}




