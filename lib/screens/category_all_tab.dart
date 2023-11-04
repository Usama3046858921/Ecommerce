import 'package:ecommerce/data/category_data.dart';
import 'package:ecommerce/widgets/show_all_widgets.dart';
import 'package:ecommerce/widgets/single_product_widget.dart';
import 'package:flutter/cupertino.dart';
import '../objects/SingleProductModel.dart';

class CategoryAllTabBar extends StatefulWidget {
  const CategoryAllTabBar({Key? key}) : super(key: key);

  @override
  State<CategoryAllTabBar> createState() => _CategoryAllTabBarState();
}

class _CategoryAllTabBarState extends State<CategoryAllTabBar> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        showAll(
          'Clothing',
        ),
        builderRender(categoryClothData),
        showAll(
          'Shoes',
        ),
        builderRender(categoryShoesData),
        showAll(
          'Accessories',
        ),
        builderRender(categoryAccessoriesData),

      ],
    );
  }
}

Widget builderRender(List<SingleProductModel> singleProduct) {
  return SizedBox(
    height: 250,
    child: GridView.builder(
        shrinkWrap: true,
        primary: true,
        scrollDirection: Axis.horizontal,
        itemCount: singleProduct.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.4,
        ),
        itemBuilder: (context, index) {
          var data = singleProduct[index];
          return SingleProductWidget(
            productImage: data.productImage,
            productName: data.productName,
            productModel: data.productModel,
            productPrice: data.productPrice,
            productOldPrice: data.productOldPrice,
            index: index,
          );
        }),
  );
}
