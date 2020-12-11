import 'dart:ui';

import 'package:flutter/material.dart';

class AavajEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aavaj",style: TextStyle(fontFamily: 'sans-serif'),),//need to learn to change fontFamily
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.art_track), onPressed: () => debugPrint("MenuBar"),)
        ],
      ),backgroundColor: Colors.black87,
    );
  }
}
