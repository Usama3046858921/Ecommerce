import 'package:flutter/cupertino.dart';
import '../objects/CategoryProductModel.dart';
import '../widgets/category_product.dart';

class CategoryMenTabBar extends StatefulWidget {
  CategoryMenTabBar({Key? key, required this.categoryProductModel})
      : super(key: key);
  List<CategoryProductModel> categoryProductModel = [];

  @override
  State<CategoryMenTabBar> createState() => _CategoryMenTabBarState();
}

class _CategoryMenTabBarState extends State<CategoryMenTabBar> {
  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: widget.categoryProductModel.length,
        itemBuilder: (context, index) {
          var data = widget.categoryProductModel[index];
          return CategoryProductWidget(
            productImage: data.productImage,
            productName: data.productName,
            productModel: data.productModel, index: index,
          );
        });
  }
}

