import 'package:flutter/material.dart';
import 'package:tutorial_advance/pages/home_page.dart';
import 'package:tutorial_advance/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutorial_advance/utils/routes.dart';
import 'package:tutorial_advance/widget/appbartheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
