import 'package:ecommerce/appColors/appColors.dart';
import 'package:flutter/cupertino.dart';

class CategoryScreenStyle{

  static const TextStyle categoryAppBarTitleStyle = TextStyle (
    color: appColors.baseBlackColor,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle categoryProductNameStyle = TextStyle (
    color: appColors.baseBlackColor,
    fontWeight: FontWeight.w400,
    fontSize: 20,
  );

  static const TextStyle categoryProductModelStyle = TextStyle (
    color: appColors.baseDarkPinkColor,
    fontSize: 14,
  );


}