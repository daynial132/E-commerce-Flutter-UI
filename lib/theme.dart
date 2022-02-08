import 'package:flutter/material.dart';

import 'constants.dart';

class MyThemes {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color:Colors.black,fontSize: 22),
      textTheme: TextTheme(
        headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
      ),
    ),
    //lightappBarTheme(),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // If  you are using latest version of flutter then lable text and hint text shown like this
      // if you r using flutter less then 1.20.* then maybe this is not working properly
      // if we are define our floatingLabelBehavior in our theme then it's not applayed
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: kTextColor),
        gapPadding: 10,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: kTextColor),
        gapPadding: 10,
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final darkTheme = ThemeData(
    // scaffoldBackgroundColor: Colors.black,
    fontFamily: "Muli",
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      color: Colors.black26,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(color:Colors.white,fontSize: 22),
      textTheme: TextTheme(
        headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
      ),
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: kPrimaryLightColor),
      bodyText2: TextStyle(color: kPrimaryLightColor),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // If  you are using latest version of flutter then lable text and hint text shown like this
      // if you r using flutter less then 1.20.* then maybe this is not working properly
      // if we are define our floatingLabelBehavior in our theme then it's not applayed
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: kPrimaryLightColor),
        gapPadding: 10,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: kPrimaryLightColor),
        gapPadding: 10,
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

// InputDecorationTheme lightinputDecorationTheme() {
//   OutlineInputBorder outlineInputBorder = OutlineInputBorder(
//     borderRadius: BorderRadius.circular(28),
//     borderSide: BorderSide(color: kTextColor),
//     gapPadding: 10,
//   );
//   return InputDecorationTheme(
//     // If  you are using latest version of flutter then lable text and hint text shown like this
//     // if you r using flutter less then 1.20.* then maybe this is not working properly
//     // if we are define our floatingLabelBehavior in our theme then it's not applayed
//     floatingLabelBehavior: FloatingLabelBehavior.always,
//     contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
//     enabledBorder: outlineInputBorder,
//     focusedBorder: outlineInputBorder,
//     border: outlineInputBorder,
//   );
// }

}
