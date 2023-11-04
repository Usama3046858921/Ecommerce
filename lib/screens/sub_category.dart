import 'package:ecommerce/appColors/appColors.dart';
import 'package:ecommerce/svg_images/svg_images.dart';
import 'package:ecommerce/widgets/single_product_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../objects/SingleProductModel.dart';
import '../widgets/toggle_button_widget.dart';

class SubCategory extends StatefulWidget {
   SubCategory({Key? key, required this.productName, required this.productModel,  required this.productData, }) : super(key: key);
  List<SingleProductModel> productData;
  final String productName;
  final String productModel;

  @override
  State<SubCategory> createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productName,
                  style: TextStyle(
                    color: appColors.baseBlackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.productModel,
                  style: TextStyle(
                    color: appColors.baseGrey60Color,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.list_alt_sharp,
                            color: appColors.baseBlackColor,
                            size: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '${widget.productData.length} Products',
                            style: TextStyle(
                              color: appColors.baseGrey70Color,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ToggleButtonWidget(),
                        ],
                      ),
                    )
                  ],
                ),
                Divider(),
                GridView.builder(
                  itemCount: widget.productData.length,
                    shrinkWrap: true,
                    primary: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (context, index) {
                      var data = widget.productData[index];
                      return SingleProductWidget(productImage: data.productImage, productName: data.productName, productModel: data.productModel, productPrice: data.productPrice, productOldPrice: data.productOldPrice, index: index,


                          );
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}

_AppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    actions: [
      IconButton(
          onPressed: () {},
          icon: RotationTransition(
            turns: AlwaysStoppedAnimation(90 / 360),
            child: SvgPicture.asset(
              SvgImages.filter,
              color: Colors.black,
              width: 35,
            ),
          )),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          SvgImages.search,
          color: Colors.black,
          width: 35,
        ),
      ),
    ],
  );
}
