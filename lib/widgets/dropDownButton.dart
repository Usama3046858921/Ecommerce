


import 'package:ecommerce/appColors/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/detail_screen_styles.dart';

class DropDownButton extends StatefulWidget {
  DropDownButton({Key? key,required this.title, required this.hint, required this.itm}) : super(key: key);
  String title;
  String hint;
  String? ratingController;
  List<String> itm;
  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(widget.title, style: TextStyle(
        fontSize: 16,
        color: appColors.baseBlackColor,
        fontWeight: FontWeight.bold,
      ),),
      children: [
        Padding(padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButtonFormField(
                decoration: InputDecoration(
                    fillColor: appColors.baseWhite60Color,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                iconSize: 30,
                hint: Text(widget.hint, style: DetailScreenStyle.productDropDownValueStyle),
                value: widget.ratingController,
                items: widget.itm.map((e) => DropdownMenuItem(child: Text(e), value: e,)
                ).toList(),
                onChanged: (value){
                  setState(() {
                    widget.ratingController = value!;
                  });
                },
              ),
            ],
          ),),
      ],
    );
  }
}
