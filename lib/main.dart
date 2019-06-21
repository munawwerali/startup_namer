import 'package:flutter/material.dart';
import 'Drawer.dart';
import 'RandomWordsState.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  /*@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(          // Add the 3 lines from here...
        primaryColor: Colors.green,
      ),
      home: RandomWords(),
    );
  }*/

  final appTitle = 'Startup Name Generator';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(          // Add the 3 lines from here...
        primaryColor: Colors.green,
      ),
      home: MyHomePage(title: appTitle),
    );
  }
}



