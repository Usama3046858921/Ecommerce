


import 'package:ecommerce/appColors/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/detail_screen_styles.dart';

class DropDownButtonWidget extends StatefulWidget {
   DropDownButtonWidget( {Key? key, required this.txt, required this.itm}) : super(key: key);
  String txt;
  List<String> itm;

  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  @override
  String? myController;
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        fillColor: appColors.baseWhiteColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      hint: Text(
        widget.txt,
        style: DetailScreenStyle.productDropDownValueStyle,
      ),
      value: myController,
      items: [
        "M","L","S","ML"
      ]
          .map(
            (e) => DropdownMenuItem(
          child: Text(e),
          value: e,
        ),
      )
          .toList(),
      onChanged: (String? value) {
        setState((){
          myController = value!;
        });
      },
    );
  }
}
