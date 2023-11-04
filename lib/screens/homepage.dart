import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/screens/tabbar-data.dart';
import 'package:ecommerce/styles/home_screen_styles.dart';
import 'package:ecommerce/svg_images/svg_images.dart';
import 'package:ecommerce/widgets/single_product_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../appColors/appColors.dart';
import '../data/home_page_data.dart';
import '../widgets/show_all_widgets.dart';
import 'filterScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: _appBar(),
        body: TabBarView(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                buildAdvertisementPlace(),
                showAll('New Arrival'),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                  ),
                  child: GridView.builder(
                      shrinkWrap: true,
                      primary: true,
                      itemCount: singleProductData.length,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                      ),
                      itemBuilder: (context, index) {
                        final data = singleProductData[index];
                        return SingleProductWidget(
                          productImage: data.productImage,
                          productName: data.productName,
                          productModel: data.productModel,
                          productPrice: data.productPrice,
                          productOldPrice: data.productOldPrice, index: index,
                        );
                      }),
                ),
                const Divider(
                  indent: 16,
                  endIndent: 16,
                ),
                showAll('What\'s trending'),
                buildTrendingProduct(
                  productImage:
                  'https://assets.adidas.com/images/w_600,f_auto,q_auto/57d461193168475e8eecab4501127ab6_9366/Falcon_Shoes_Pink_FX7196_01_standard.jpg',
                  productModel: 'Tank-tops',
                  productName: 'Classics mesh tank top',
                  productPrice: 15,
                ),
                buildTrendingProduct(
                  productImage: 'http://t2.gstatic.com/images?q=tbn:ANd9GcRgQ9pUetvljUW4rTdPsNGH38OzjX1WWAaNSpfSN2PSrk3PYFig',
                  productModel: 'Tank-tops',
                  productName: 'Classics mesh tank top',
                  productPrice: 15,
                ),
                buildTrendingProduct(
                  productImage:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdEXTttiLRZwxiZ4YpjNsiY_T_jy3J4BlnPw&usqp=CAU',
                  productModel: 'Tank-tops',
                  productName: 'Classics mesh tank top',
                  productPrice: 15,
                ),
                showAll('What\'s trending'),
                SizedBox(
                  height: 240,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      primary: true,
                      itemCount: singleProductData.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 1.5,
                      ),
                      itemBuilder: (context, index) {
                        var data = singleProductData[index];
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
            tabBar(
              productData: clothsData,
            ),
            tabBar(
              productData: shoesData,
            ),
            tabBar(
              productData: accessoriesData,
            ),
          ],
        ),
      ),
    );
  }

  List imgList = [
    {"id": 1, "image_path": 'images/banner.png'},
    {"id": 2, "image_path": 'images/bestsellersbanner.png'},
    {"id": 3, "image_path": 'images/banner.png'}
  ];
  CarouselController sliderController = CarouselController();
  int currentIndex = 0;

  Widget buildAdvertisementPlace() {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: SizedBox(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            InkWell(
              onTap: () {
                if (kDebugMode) {
                  print(currentIndex);
                }
              },
              child: CarouselSlider(
                items: imgList
                    .map(
                      (item) => Image.asset(
                        item['image_path'],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    )
                    .toList(),
                carouselController: sliderController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 3,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => sliderController.animateToPage(entry.key),
                    child: Container(
                      width: currentIndex == entry.key ? 17 : 7,
                      height: 7.0,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 3.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == entry.key
                              ? Colors.red
                              : Colors.teal),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: const Column(
        children: [
          Text(
            'Welcome',
            style: HomeScreenStyles.appBarUpperTitleStyles,
          ),
          Text(
            'Shopping',
            style: HomeScreenStyles.appBarBottomTitleStyles,
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => FilterScreen()));
          },
          icon: RotationTransition(
            turns: const AlwaysStoppedAnimation(90 / 360),
              child: SvgPicture.asset(SvgImages.filter),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('images/search.svg'),
        )
      ],
      bottom: const TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        indicator: BoxDecoration(color: Colors.transparent),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: appColors.baseBlackColor,
        labelColor: appColors.baseDarkPinkColor,
        tabs: [
          Text('All'),
          Text('Clothing'),
          Text('Shoes'),
          Text('Accessories'),
        ],
      ),
    );
  }

  Widget buildTrendingProduct(
      {required String productImage,
      required String productName,
      required String productModel,
      required double productPrice}) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        left: 30,
        right: 20,
        bottom: 20,
      ),
      height: 65,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
              child: Material(
            shape: RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.network(productImage),
          )),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: HomeScreenStyles.trendingProductNameStyles,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    productModel,
                    style: HomeScreenStyles.trendingProductModelStyles,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: MaterialButton(
              onPressed: () {},
              color: appColors.baseLightPinkColor,
              height: 45,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.7),
                side: BorderSide.none,
              ),
              child: Text(
                '\$ $productPrice',
                style: HomeScreenStyles.trendingProductPriceStyles,
              ),
            ),
          )
        ],
      ),
    );
  }
}
