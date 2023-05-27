import 'package:flutter/material.dart';
import 'package:projectech/home_screen.dart';
import 'package:projectech/secondscreen.dart';
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'second_screen':(context){
          return const SecondScreen();
        }
      },
      home:HomeScreen()
    );
  }
}
