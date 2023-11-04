import 'package:ecommerce/appColors/appColors.dart';
import 'package:flutter/cupertino.dart';

class DetailScreenStyle{

  static const TextStyle companyTitleStyle = TextStyle (
    color: appColors.baseBlackColor,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle productModelStyle = TextStyle (
    color: appColors.baseDarkPinkColor,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle productPriceStyle = TextStyle (
    color: appColors.baseBlackColor,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle productOldPriceStyle = TextStyle (
    color: appColors.baseGrey60Color,
    fontSize: 16,
    decoration: TextDecoration.lineThrough,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle productDropDownValueStyle = TextStyle (
    color: appColors.baseBlackColor,
    fontSize: 12,
  );

  static const TextStyle buttonTextStyle = TextStyle (
    color: appColors.baseWhiteColor,
    fontSize: 20,
  );

  static const TextStyle sizeGruideTextStyle = TextStyle (
    color: appColors.baseBlackColor,
    fontSize: 20,
  );

}