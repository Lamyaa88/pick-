import 'package:pick/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final bool  secure ;
  Widget suffixIcon ;
 
  final TextInputType inputType ;
  String _errorMessage (String str) {
    switch (hint) {
      case 'Enter your name':
        return 'Name is empty !';
      case 'Enter your email':
        return 'Email is empty !';
      case 'Enter your password':
        return 'Password is empty !';
    }
  }
  CustomTextField(
      { this.secure : false, this.hint , this.inputType:TextInputType.text ,this.suffixIcon : null,} );
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width ;
    return Container(height: height*.09,width: width*.9,
      child: TextFormField(keyboardType: inputType,
        style: TextStyle(color:greyColor,fontSize: height*.02,),
        obscureText: secure,
        cursorColor: greyColor,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: offWhiteColor,
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color:Colors.white)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: mainColor)),),),);}}