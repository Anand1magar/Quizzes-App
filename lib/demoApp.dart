import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My decoration App"),
        ),
        body: Center(
          child: Container(
            
           
            decoration: BoxDecoration(
              
             gradient: LinearGradient(

               begin: Alignment.topLeft,
               end: Alignment.bottomRight,
               stops: [0.2, 0.4, 0.6],

              
              colors: [Colors.orange, Colors.red, Colors.yellow, Colors.white],
              
             )

             
            ),
          ),
        ),
      ),
    );
  }
}
