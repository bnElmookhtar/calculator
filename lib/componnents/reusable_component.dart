import 'package:flutter/material.dart';

import 'colors.dart';
MaterialButton defaultButton({required String buttonName, required onpressed()}) =>
    MaterialButton(
      onPressed: onpressed,
      child:Text(
          buttonName,
          style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: buttonTextColorWhite_100),
      ),
      height: 80,
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: keyColorOrange_100,
);
bool checkLastOperation({required String lastOperation}){
      return (lastOperation == '/'||lastOperation == '*'||lastOperation == '-'||lastOperation == '+'||lastOperation == '%')?true:false;
}
SizedBox defaultHeightSpace({required double height}) =>SizedBox(height: height,);
SizedBox defaultWidthSpace({required double width}) =>SizedBox(width: width,);
