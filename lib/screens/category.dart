import 'package:ecommerce/appColors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../data/category_data.dart';
import '../styles/category_screen_styles.dart';
import '../svg_images/svg_images.dart';
import 'category_all_tab.dart';
import 'category_men_tabbar.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: appColors.baseWhiteColor,
        appBar: _appBar(),
        body: TabBarView(
          children: [
             const CategoryAllTabBar(),
            CategoryMenTabBar(categoryProductModel: menCategoryData),
            CategoryMenTabBar(categoryProductModel: womenCategoryData),
            CategoryMenTabBar(categoryProductModel: forKids),
          ],
        ),
      ),
    );
  }
}

_appBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    centerTitle: true,
    title: const Text('Welcome', style: CategoryScreenStyle.categoryAppBarTitleStyle),
    actions: [
      RotationTransition(
        turns: const AlwaysStoppedAnimation(90 / 360),
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.filter,
            color: appColors.baseBlackColor,
            width: 35,
          ),
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          SvgImages.search,
          color: appColors.baseBlackColor,
          width: 35,
        ),
      ),
    ],
    bottom: const TabBar(
      indicator: BoxDecoration(
        color: Colors.transparent,
      ),
      labelStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelColor: appColors.baseBlackColor,
      labelColor: appColors.baseDarkPinkColor,
      automaticIndicatorColorAdjustment: false,
      tabs: [
        Text('All'),
        Text('Men'),
        Text('Woman'),
        Text('Kids'),
      ],
    ),
  );
}
