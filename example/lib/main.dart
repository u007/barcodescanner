import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'src/home.dart';
import 'src/scan.dart';
import 'Foundation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoApp(
        theme: CupertinoThemeData(
            barBackgroundColor: CupertinoColors.extraLightBackgroundGray,
            primaryColor: CupertinoColors.destructiveRed),
        home: HomePage(
          key: Key('1'),
          title: "Ios",
        ),
      );
    } else {
      return MaterialApp(
        theme: ThemeData.dark(),
        home: HomePage(
          key: Key('1'),
          title: "Android",
        ),
      );
    }
  }
}
