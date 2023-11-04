import 'package:flutter/material.dart';




Widget btnWidget({required BuildContext context, required Color clr, required String txt, Function? fn}){
  return InkWell(
    child: Container(
      height: 45,
      width: MediaQuery.of(context).size.width/2-40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: clr,
      ),
      child: Center(
        child: Text(txt, style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),),
      ),
    ),
    onTap: ()=> fn!(),

  );
}