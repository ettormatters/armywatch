import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'solo_widget.dart';
import 'discover_widget.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  
  int _currentIndex = 0;

  final List<Widget> _children = [
    SoloWidget(),
    DiscoverWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.copyright, color: Colors.black,),
          tooltip: 'Copyright',
          onPressed: () {
            CupertinoPopupSurface(child: Text("Hello"),);
          },
        ),
        //title: Text('armywatch'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 50,
        child: CupertinoTabBar(
          border: Border.all(width: 0.0),
          backgroundColor: Colors.white,
          iconSize: 30.0,
          inactiveColor: Colors.black12,
          activeColor: Colors.black,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            new BottomNavigationBarItem(
              icon: Icon(Icons.person), 
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.search),
            ),
          ]
        ),
      )
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

