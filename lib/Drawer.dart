import 'package:flutter/material.dart';

import 'RandomWordsState.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RandomWords randomWords = new RandomWords();
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: randomWords),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Startup Namer'),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text('Name Generator'),
              onTap: () {
                // Navigator.of(context).push(RandomWordsState._pushSaved);
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Saved Names'),

              onTap: () {

                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.of(context).push(RandomWords.get());
              },
            ),
          ],
        ),
      ),
    );
  }
}