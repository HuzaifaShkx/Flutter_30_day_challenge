import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int a = 30;
    String s = "Practice Flutter";

    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
