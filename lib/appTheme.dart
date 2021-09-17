import 'package:flutter/material.dart';


class AppTheme {

  static Color iconColorOrange = Color(0xffFF6F00);
  static Color iconColorGrey = Color(0xff616161);


  static Color _lightFontColor=Color(0xffFF6F00);
  static Color _lightPrimaryColor = Colors.white;
  static Color _lightOnPrimaryColor = Colors.black;
  static Color _lightSecondaryColor = Colors.green;
  static Color _lightGrey= Color(0xff9E9E9E);
  static Color _lightGreyDark= Color(0xff616161);

  static TextStyle _lightHeadlineNormal=TextStyle(color: _lightFontColor,fontSize: 20,fontWeight: FontWeight.w600);
  static TextStyle _lightSubtitle=TextStyle(color: _lightGrey,fontSize: 16,fontWeight: FontWeight.normal);


  static ThemeData lightTheme =ThemeData(
    scaffoldBackgroundColor: _lightPrimaryColor,
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(size: 30),
      elevation: 0,
      color: _lightPrimaryColor,
      iconTheme: IconThemeData(color: iconColorOrange,size: 25),
      textTheme: TextTheme(
          headline1: _lightHeadlineNormal,
          headline6: _lightHeadlineNormal,
          subtitle2: _lightSubtitle,
      ),
    ),

    iconTheme: IconThemeData(
      color: _lightGrey,
      size: 28,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: _lightPrimaryColor,
      unselectedItemColor: iconColorGrey,
      selectedItemColor: iconColorOrange,
    ),

  );


}
