import 'package:ecommerce/appColors/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Container(
              height: 55,
              margin: EdgeInsets.all(10),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: appColors.baseGrey80Color,
                  foregroundColor: Colors.grey,
                ),
                onPressed: () {},
                icon: Icon(Icons.delete,
                    color: appColors.baseWhiteColor, size: 30),
                label: Text(
                  'Remove',
                  style: TextStyle(
                    fontSize: 25,
                    color: appColors.baseWhiteColor,
                  ),
                ),
              ),
            )),
            Expanded(
                child: Container(
                  height: 55,
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: appColors.baseDarkPinkColor,
                      foregroundColor: Colors.grey,
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart,
                        color: appColors.baseWhiteColor, size: 30),
                    label: Text(
                        'Buy Now',
                      style: TextStyle(
                        fontSize: 25,
                        color: appColors.baseWhiteColor,
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
      appBar: _appBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                singleBag(),
                singleBag(),
                singleBag(),
                singleBag(),
                singleBag(),
                singleBag(),
                singleBag(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

_appBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(
      'WishList',
      style: TextStyle(
        color: appColors.baseBlackColor,
      ),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(
          right: 14,
          top: 14,
        ),
        child: Text(
          'Select',
          style: TextStyle(
            fontSize: 20,
            color: appColors.baseBlackColor,
          ),
        ),
      )
    ],
  );
}

Widget singleBag() {
  // String? myController;
  return Card(
    child: SizedBox(
      height: 140,
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                            )),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '3 stripes shirt',
                              style: TextStyle(
                                fontSize: 16,
                                color: appColors.baseBlackColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'J. Originals',
                              style: TextStyle(
                                color: appColors.baseDarkPinkColor,
                              ),
                            ),
                            Text(
                              '\$40.00',
                              style: TextStyle(
                                fontSize: 16,
                                color: appColors.baseBlackColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '\$80.00',
                              style: TextStyle(
                                fontSize: 16,
                                decoration: TextDecoration.lineThrough,
                                color: appColors.baseGrey50Color,
                              ),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundColor: appColors.baseGrey30Color,
                        child: Icon(
                          Icons.check,
                          color: appColors.baseWhiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    ),
  );
}
