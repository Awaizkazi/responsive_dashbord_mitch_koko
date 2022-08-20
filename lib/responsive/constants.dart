import 'package:flutter/material.dart';

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
  elevation: 0,
);

var myDefalultBackground = Colors.grey[300];

var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: const [
      DrawerHeader(
        child: Icon(Icons.favorite),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text(
          'Dashboard',
          style: TextStyle(color: Colors.black),
        ),
      ),
      ListTile(
        leading: Icon(Icons.message),
        title: Text(
          'Message',
          style: TextStyle(color: Colors.black),
        ),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text(
          'Setting',
          style: TextStyle(color: Colors.black),
        ),
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text(
          'Logout',
          style: TextStyle(color: Colors.black),
        ),
      ),
    ],
  ),
);

class BackGroundColor extends StatefulWidget {
  const BackGroundColor({Key? key}) : super(key: key);

  @override
  State<BackGroundColor> createState() => _BackGroundColorState();
}

class _BackGroundColorState extends State<BackGroundColor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF01ebd),
              Color(0xFF873bcc),
              Color(0xFFfe4a97),
              Color(0xFFe17763),
              Color(0xFF68998c),
            ],
          ),
        ),
      ),
    );
  }
}
