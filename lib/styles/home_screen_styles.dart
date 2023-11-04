import 'package:ecommerce/appColors/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenStyles{
  static const TextStyle appBarUpperTitleStyles = TextStyle (
    color: appColors.baseBlackColor,
    fontWeight: FontWeight.bold,

  );
  static const TextStyle appBarBottomTitleStyles = TextStyle (
    color: Colors.grey,
    fontSize: 13,
  );
  static const TextStyle trendingProductNameStyles = TextStyle (
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  static const TextStyle trendingProductModelStyles = TextStyle (
    fontSize: 14,
    color: appColors.baseDarkPinkColor,
  );
  static const TextStyle trendingProductPriceStyles = TextStyle (
    fontSize: 14,
    color: appColors.baseWhiteColor,
  );
}