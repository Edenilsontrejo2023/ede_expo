import 'package:ede_expo/pages/ejemplo.dart';
import 'package:ede_expo/pages/ejemplo2.dart';
import 'package:ede_expo/pages/ejemplo3.dart';
import 'package:ede_expo/pages/ejemplo4.dart';
import 'package:flutter/material.dart';

import 'inicio.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _itemDrawer = 0;
  

  _getDrawerItem(int position) {
    switch (position) {
      case 0:
        return Inicio();
      case 1:
        return HomePage();
      case 2:
        return MyApp();
      case 3:
        return SwitchApp();
      case 4:
        return SliderApp();
    }
  }

  void _onSelectItemDrawer(int pos) {
    Navigator.pop(context);
    setState(() {
      _itemDrawer = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NAVEGACION'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
              ),
              child: Text(
                // Ink.image(image: /mia.jpg)
                'EDENILSON',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'INICIO',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                _onSelectItemDrawer(0);
              },
            ),
            // Divider(
            //  color: Color.blue,
            // ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('CHEKBOX'),
              onTap: () {
                _onSelectItemDrawer(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('DATE Y TIMEPICKERS'),
              onTap: () {
                _onSelectItemDrawer(2);
              },
            ),
           
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('SWITCH'),
              onTap: () {
                _onSelectItemDrawer(3);
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('SLIDER'),
              onTap: () {
                _onSelectItemDrawer(4);
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItem(_itemDrawer),
    );
  }
}
