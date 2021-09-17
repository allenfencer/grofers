import 'package:flutter/material.dart';
import 'package:grofers/appTheme.dart';

import 'package:grofers/home_page.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: HomePage(),
    )
  );
}