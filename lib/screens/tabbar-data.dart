import 'package:flutter/cupertino.dart';
import '../data/home_page_data.dart';
import '../objects/SingleProductModel.dart';
import '../widgets/single_product_widget.dart';

class tabBar extends StatefulWidget {
  List<SingleProductModel> productData;
   tabBar({Key? key, required this.productData}) : super(key: key);

  @override
  State<tabBar> createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> {
  @override
  Widget build(BuildContext context) {


    return  ListView(
      children: [
        GridView.builder(
        physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    primary: true,
    itemCount: singleProductData.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 1.5,
    ), itemBuilder: (context, index){
    var data = widget.productData[index];
    return SingleProductWidget(
    productImage: data.productImage,
    productName: data.productName,
    productModel: data.productModel,
    productPrice: data.productPrice,
    productOldPrice: data.productOldPrice, index: index,
    );
    }),
      ],
    );
  }
}
