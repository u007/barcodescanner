
import 'package:flutter/material.dart';

import 'ThirdPage.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to 3rd page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThirdPage()),
            );
          },
        ),
      ),
    );
  }
}