import 'package:ecommerce/appColors/appColors.dart';
import 'package:ecommerce/objects/SingleProductModel.dart';
import 'package:ecommerce/screens/size_guide_screen.dart';
import 'package:ecommerce/styles/detail_screen_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data/detail_screen_data.dart';
import '../widgets/DROP.dart';
import '../widgets/single_product_widget.dart';

class DetailScreen extends StatefulWidget {
  final SingleProductModel data;

  const DetailScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: ListView(physics: const BouncingScrollPhysics(), children: [
        ListTile(
          leading: const CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('images/ecommerce_login.jpg'),
          ),
          title:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(widget.data.productName,
                style: DetailScreenStyle.companyTitleStyle),
            SizedBox(
              height: 5,
            ),
            Text(
              widget.data.productModel,
              style: DetailScreenStyle.productModelStyle,
            ),
          ]),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.data.productPrice.toString(),
                style: DetailScreenStyle.productPriceStyle,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.data.productOldPrice.toString(),
                style: DetailScreenStyle.productOldPriceStyle,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  widget.data.productImage,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 15, top: 15),
                      child: Image.network(
                        widget.data.productSecondImage,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 15, top: 15),
                      child: Image.network(
                        widget.data.productThirdImage,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 15, top: 15),
                      child: Image.network(
                        widget.data.productFourImage,
                      ),
                    ),
                  ),
                ],
              ),
              Row(children: [
                Expanded(
                  child: Drop(
                    selectOpt: 'Color',
                    item: const ['red', 'blue', 'green', 'white', 'black', 'pink'],
                  ),
                ),
                Expanded(
                  child: Drop(
                    selectOpt: 'Size',
                    item: const ['25', '30', '35', '40', '45'],
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.all(16),
                child: MaterialButton(
                  elevation: 0,
                  height: 50,
                  color: appColors.baseDarkGreenColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    'Add to Cart',
                    style: DetailScreenStyle.buttonTextStyle,
                  ),
                  onPressed: () {},
                ),
              ),
              const ExpansionTile(
                  title: Text('Description',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: appColors.baseBlackColor,
                      )),
                  children: [
                    ListTile(
                      title: Wrap(
                        children: [
                          Text(
                            'This woman\'s tank top is designed to help you stay cool. It\'s made of stretchy and breathable fabric  that moves heat away from your skin.',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Material',
                                    style: TextStyle(
                                      fontSize: 18.60,
                                    ),
                                  ),
                                  Text(
                                    '84% nylon',
                                    style: TextStyle(
                                      fontSize: 18.60,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '16% elastance',
                                    style: TextStyle(
                                      fontSize: 18.60,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Size',
                                    style: TextStyle(
                                      fontSize: 18.60,
                                    ),
                                  ),
                                  Text(
                                    '2XS, \tXS, \ts, \tM, \tL',
                                    style: TextStyle(
                                      fontSize: 18.60,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Gender',
                                    style: TextStyle(
                                      fontSize: 18.60,
                                    ),
                                  ),
                                   Text(
                                    'Woman',
                                    style: TextStyle(
                                      fontSize: 18.60,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Province',
                                    style: TextStyle(
                                      fontSize: 18.60,
                                    ),
                                  ),
                                  Text(
                                    'Balochistan',
                                    style: TextStyle(
                                      fontSize: 18.60,
                                    ),
                                  ),

                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Country',
                                    style: TextStyle(
                                      fontSize: 18.60,
                                    ),
                                  ),
                                  Text(
                                    'Pakistan',
                                    style: TextStyle(
                                      fontSize: 18.60,
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )]
              ),
              MaterialButton  (
                height: 55,
                elevation: 0,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SizeGuideScreen()));
                },
                minWidth: double.infinity,
                color: appColors.baseWhite60Color,
                child: const Text('Size Gruide', style: DetailScreenStyle.sizeGruideTextStyle,),
              ),
              const ListTile(
                leading: Text('You may also like',
                style: TextStyle(
                  fontSize: 18,
                  color: appColors.baseBlackColor,
                ),),
                trailing: Text('Show All', style: TextStyle(
                  fontSize: 18,
                  color: appColors.baseDarkPinkColor,
                ),),
              ),
              SizedBox(
                height: 240,
                child: GridView.builder(
                  scrollDirection: Axis. horizontal,
                    shrinkWrap: true,
                    primary: true,
                    itemCount: detailScreenData.length,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1.5,
                    ),
                    itemBuilder: (context, index) {
                    var data = detailScreenData[index];
                      return SingleProductWidget(
                        productImage: data.productImage,
                        productName: data.productName,
                        productModel: data.productModel,
                        productPrice: data.productPrice,
                        productOldPrice: data.productOldPrice, index: index,
                      );
                    }),
              ),
            ],
          ),
          // ),
        ),
      ]),
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      title: const Text(
        'Reebok',
        style: TextStyle(
          color: appColors.baseBlackColor,
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.heart,
              color: Colors.black,
            )),
      ],
    );
  }
}
