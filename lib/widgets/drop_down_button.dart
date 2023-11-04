
import 'package:ecommerce/appColors/appColors.dart';
import 'package:ecommerce/styles/detail_screen_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropButton extends StatefulWidget {
  final String hintText;
  String ratingController;
  final List<String> itam;
  DropButton({Key? key, required this.hintText, required this.ratingController, required this.itam,}) : super(key: key);
  @override
  State<DropButton> createState() => _DropButtonState();

}

class _DropButtonState extends State<DropButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButtonFormField(
         decoration: InputDecoration(
           fillColor: appColors.baseWhiteColor,
           filled: true,
           border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10),
             borderSide: BorderSide.none,
           ),
         ),
        hint: Text(widget.hintText,style: DetailScreenStyle.productDropDownValueStyle,),
        value: widget.ratingController,
        items: widget.itam.map((e) => DropdownMenuItem(
          child: Text(e),
          value: e,
        ),
        ).toList(),
        onChanged: (value) {
           setState(() {
             widget.ratingController = value!;
           });
        },
      ),
    );
  }
}
