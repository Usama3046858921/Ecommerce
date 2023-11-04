



import 'package:ecommerce/appColors/appColors.dart';
import 'package:flutter/material.dart';

import '../data/home_page_data.dart';
import '../screens/detail_screen.dart';
import '../objects/SingleProductModel.dart';

class SingleProductWidget extends StatelessWidget {
  SingleProductWidget({Key? key, required this.productImage, required this.productName,required this.productModel,required
  this.productPrice,required this.productOldPrice,required this.index}) : super(key: key);
     var productImage;
  final String productName;
  final String productModel;
  final double productPrice;
  final double productOldPrice;
  int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(data: singleProductData[index])));
      },
      child: Container(
        height: 202,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Expanded(child:Container(
              alignment: Alignment.topRight,
              decoration: BoxDecoration(
                color: appColors.baseGrey10Color,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(productImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: IconButton(
                icon: Icon(Icons.favorite,size: 30,color: appColors.baseDarkOrangeColor,),
                onPressed: (){},
              ),
            )),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Text(productName,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,

                    ),),
                  Text(productModel,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: appColors.baseDarkPinkColor,

                    ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('\$ $productPrice',overflow: TextOverflow.ellipsis,style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(width: 15,),
                      Text('\$ $productOldPrice',overflow: TextOverflow.ellipsis,style: TextStyle(
                        fontWeight: FontWeight.bold,

                        decoration: TextDecoration.lineThrough,
                      ),),
                    ],
                  ),

                ],
              ),)
          ],

        ),
      ),
    );

  }
}
