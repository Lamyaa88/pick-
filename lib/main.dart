import 'package:flutter/material.dart';
import 'package:pick/screens/signIn.dart';

import 'constants/colors.dart';

void main(){
  runApp(
      MaterialApp(debugShowCheckedModeBanner: false,
          home: SignIn(),
          theme: ThemeData(
              primaryColor: mainColor,
              accentColor: mainColor,
              fontFamily: "Cairo",
              textTheme: TextTheme(
                bodyText1: TextStyle(),
                bodyText2: TextStyle(),
              ).apply(
                bodyColor: blackColor,
                displayColor: Colors.blue,
              ))));
}


