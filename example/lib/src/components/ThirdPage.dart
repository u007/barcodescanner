
import 'package:flutter/material.dart';

import 'FirstPage.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to 1st page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstPage()),
            );
          },
        ),
      ),
    );
  }
}