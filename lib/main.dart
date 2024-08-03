import 'package:flutter/material.dart';
import 'package:untitled/HomeScreen.dart';
import 'package:untitled/const.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold (
        appBar: myAppBar(),
        body: myBody(),
        bottomNavigationBar:myNavig (),
        floatingActionButton: myFloatingActionButton (),
      ),

      debugShowCheckedModeBanner: false,
    );

  }






}