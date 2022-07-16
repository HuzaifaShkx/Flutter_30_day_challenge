import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int a = 30;
    String s = "Practice Flutter";

    return Scaffold(
      
      appBar: AppBar(
        title: Text("Practice Flutter"),
        backgroundColor: Colors.green,
        shadowColor: Colors.greenAccent,
      ),
      body: Center(child: Text("welcome to flutter $s in $a days")),
      drawer: Drawer(),
    );
  }
}
