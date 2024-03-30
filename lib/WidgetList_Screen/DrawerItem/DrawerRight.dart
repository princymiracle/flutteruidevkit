// import 'package:flutter/material.dart';
//
// class DrawerRightPage extends StatefulWidget {
//   const DrawerRightPage({super.key});
//
//   @override
//   State<DrawerRightPage> createState() => _DrawerRightPageState();
// }
//
// class _DrawerRightPageState extends State<DrawerRightPage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
// import 'package:flutter/material.dart';
//
// class StandartDrawerPage extends StatefulWidget {
//   const StandartDrawerPage({super.key});
//
//   @override
//   State<StandartDrawerPage> createState() => _StandartDrawerPageState();
// }
//
// class _StandartDrawerPageState extends State<StandartDrawerPage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DrawerRightPage extends StatefulWidget {
  String title;
  DrawerRightPage({super.key,this.title = 'Drawer at Right'});

  @override
  State<DrawerRightPage> createState() => _DrawerRightPageState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('title', title));
  }
}

class _DrawerRightPageState extends State<DrawerRightPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Home'),trailing: Icon(Icons.arrow_forward),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Business'),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('School'),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}