import 'package:ecommerce/appColors/appColors.dart';
import 'package:flutter/cupertino.dart';


Widget showAll(String leftText) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(leftText,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: appColors.baseBlackColor,
          ),
        ),
        Text(
          'Show All',
          style: TextStyle(
            fontSize: 17,
            color: appColors.baseDarkPinkColor,
          ),
        ),
      ],
    ),
  );
}
