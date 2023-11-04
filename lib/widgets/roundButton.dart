


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget RoundButton({required VoidCallback ontap,required String text, bool loading=false}){
  return InkWell(
    onTap: ontap,
    child: Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: loading? const CircularProgressIndicator(strokeWidth: 3,color: Colors.white,):
        Text(text, style: const TextStyle(color: Colors.white),),
      ),
    ),
  );
}