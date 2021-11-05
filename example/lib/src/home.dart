import 'package:flutter/material.dart';
import '../Foundation.dart';
import 'package:flutter/cupertino.dart';
import './components/FirstPage.dart';
import './components/SecondPage.dart';
import './components/ThirdPage.dart';
import 'scan.dart';

class HomePage extends StatefulWidget {
  HomePage({required Key key, this.title = ''}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int currentTabIndex = 0;

  void onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  List<Widget> tabs = [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
  ];

  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoTabScaffold(
          tabBar: CupertinoTabBar(items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: 'Scan'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: 'Profile')
          ]),
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return FirstPage();
              case 1:
                return ScanPage();
              case 2:
                return ThirdPage();
              default:
                return FirstPage();
            }
          });
    }
    //Android Scafold
    else {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        // Body Where the content will be shown of each page index
        body: tabs[currentTabIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentTabIndex,
            onTap: onTapped,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'User Info')
            ]),
      );
    }
  }
}
