import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var ImageNumber=1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Image.asset('images/ball${ImageNumber}.png'),
        ),
      ),
      onTap: (){
        Random random = Random();
    setState( () {
      ImageNumber = Random().nextInt(4) + 1;
      print("Tapped");
    } );
      },
    );
  }
}
