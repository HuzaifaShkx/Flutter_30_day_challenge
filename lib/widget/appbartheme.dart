import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.deepOrange,
           cardColor: Colors.white,
        buttonColor: darkbluishColor,
        canvasColor: creamColor ,
        accentColor: darkbluishColor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 22),
        ),
      );

  static ThemeData get darkTheme => ThemeData(
    brightness: Brightness.dark,
         fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.deepOrange,
        cardColor: Colors.black,
        buttonColor: lightbluishColor,
        canvasColor: darkCreamColor ,
        accentColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 22),
        )
      );

  //Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkbluishColor = Color(0xff403b58);
  static Color lightbluishColor = Vx.indigo500;
}
