import 'package:flutter/material.dart';

Color textBgColor= Color(0xffFF6F00);
Color white= Color(0xffFFFFFF);
Color black =Color(0xff000000);
Color greyDark = Color(0xff616161);
Color greyLight = Color(0xff9E9E9E);
Color veryLightGrey = Color(0xffEEEEEE);

FontWeight bold= FontWeight.bold;
FontWeight regular = FontWeight.normal;
FontWeight w700=FontWeight.w700;

TextStyle banner(){
  return TextStyle(fontSize: 30,color: black,fontWeight: bold,letterSpacing: 0.7);
}

TextStyle newPriceStyle(){
  return TextStyle(fontSize: 17,color: black,fontWeight: bold,letterSpacing: 0.6);
}

TextStyle oldPriceStyle(){
  return TextStyle(fontSize: 15,color: greyDark,fontWeight: regular,decoration: TextDecoration.lineThrough);
}

TextStyle headings(){
  return TextStyle(fontSize: 22,color: black,fontWeight: w700,letterSpacing: 0.6);
}

TextStyle subHeadings(){
  return TextStyle(fontSize: 16,color: greyDark);
}

TextStyle buttonText(){
  return TextStyle(color: textBgColor,fontSize: 16);
}
