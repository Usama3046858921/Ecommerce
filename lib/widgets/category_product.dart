import 'package:ecommerce/appColors/appColors.dart';
import 'package:ecommerce/data/home_page_data.dart';
import 'package:ecommerce/styles/category_screen_styles.dart';
import 'package:flutter/material.dart';

import '../screens/sub_category.dart';

class CategoryProductWidget extends StatefulWidget {
  CategoryProductWidget(
      {Key? key,
      required this.productImage,
      required this.productName,
      required this.productModel,
      required this.index})
      : super(key: key);
  var productImage;
  var productName;
  var productModel;
  int index;

  @override
  State<CategoryProductWidget> createState() => _CategoryProductState();
}

class _CategoryProductState extends State<CategoryProductWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.index == 0) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SubCategory(
                        productName: clothsData[widget.index].productName,
                        productModel: clothsData[widget.index].productModel,
                        productData: clothsData,
                      )));
        }
        if (widget.index == 1) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SubCategory(
                        productName: shoesData[widget.index].productName,
                        productModel: shoesData[widget.index].productModel,
                        productData: shoesData,
                      )));
        }
        if (widget.index == 2) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SubCategory(
                        productName: accessoriesData[widget.index].productName,
                        productModel:
                            accessoriesData[widget.index].productModel,
                        productData: accessoriesData,
                      )));
        }
        if (widget.index == 3) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SubCategory(
                        productName: shoesData[widget.index].productName,
                        productModel: shoesData[widget.index].productModel,
                        productData: shoesData,
                      )));
        }
      },
      child: Container(
        margin: EdgeInsets.only(top: 10, right: 20, bottom: 20),
        height: 80,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(widget.productImage),
                )),
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productName,
                  style: CategoryScreenStyle.categoryProductNameStyle,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  widget.productModel,
                  style: CategoryScreenStyle.categoryProductModelStyle,
                ),
              ],
            )),
            Expanded(
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: appColors.baseBlackColor,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
