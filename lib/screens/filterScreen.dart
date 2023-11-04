import 'package:ecommerce/appColors/appColors.dart';
import 'package:flutter/material.dart';
import '../widgets/dropDownButton.dart';
import '../widgets/price_expansion_tile_widget.dart';

class FilterScreen extends StatefulWidget {
  FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          listTile(txt: 'Most Popular'),
          const Divider(),
          listTile(txt: 'New Items'),
          const Divider(),
          listTile(txt: 'Price:\t High - Low'),
          const Divider(),
          listTile(txt: 'Price:\t Low - High'),
          const Divider(),
          DropDownButton(
            title: 'Category',
            hint: 'Category',
            itm: const ['T-Shirt', 'Jacket', 'Snikers'],
          ),
          const Divider(),
          DropDownButton(
            title: 'Gender',
            hint: 'Gender',
            itm: const ['Woman', 'Man', 'Kids'],
          ),
          const Divider(),
          ExpansionTile(
            title: const Text(
              'Size',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: appColors.baseBlackColor,
              ),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.count(
                  crossAxisCount: 5,
                  primary: true,
                  shrinkWrap: true,
                  childAspectRatio: 1.4,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    buildSizeGuides(
                      text: '5',
                    ),
                    buildSizeGuides(text: '5.5'),
                    buildSizeGuides(text: '6'),
                    buildSizeGuides(text: '6.5'),
                    buildSizeGuides(text: '7'),
                    buildSizeGuides(text: '7.5'),
                    buildSizeGuides(text: '8'),
                    buildSizeGuides(text: '8.5'),
                    buildSizeGuides(text: '9'),
                    buildSizeGuides(text: '9.5'),
                    buildSizeGuides(text: '10'),
                    buildSizeGuides(text: '10.5'),
                    buildSizeGuides(text: '11'),
                  ],
                ),
              )
            ],
          ),
          const Divider(),
          ExpansionTile(
            title: const Text(
              'Colors',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: appColors.baseBlackColor,
              ),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.count(
                  crossAxisCount: 5,
                  primary: true,
                  shrinkWrap: true,
                  childAspectRatio: 1.4,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    buildSizeGuides(
                        containerColor: true,
                        color: appColors.baseDarkPinkColor),
                    buildSizeGuides(containerColor: true, color: Colors.yellow),
                    buildSizeGuides(containerColor: true, color: Colors.green),
                    buildSizeGuides(
                        containerColor: true, color: Colors.pinkAccent),
                  ],
                ),
              )
            ],
          ),
          PriceExpansionTile()
        ],
      ),
    );
  }
}

Widget buildSizeGuides(
    {String? text, bool containerColor = false, Color? color}) {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: containerColor ? color : appColors.baseGrey10Color,
      borderRadius: BorderRadius.circular(10),
    ),
    child: containerColor
        ? Container()
        : Text(
            text!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
  );
}

Widget listTile({required String txt}) {
  return ListTile(
    title: Text(
      txt,
      style: const TextStyle(
        fontSize: 16,
        color: appColors.baseBlackColor,
      ),
    ),
  );
}

_appbar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: const Text(
      'Filter',
      style: TextStyle(
        color: appColors.baseBlackColor,
      ),
    ),
    leading: (IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back, color: appColors.baseBlackColor),
    )),
  );
}
