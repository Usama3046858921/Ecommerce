import 'package:ecommerce/appColors/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/dropDownButton.dart';

class SizeGuideScreen extends StatefulWidget {
  const SizeGuideScreen({Key? key}) : super(key: key);

  @override
  State<SizeGuideScreen> createState() => _SizeGuideScreenState();
}

class _SizeGuideScreenState extends State<SizeGuideScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gender',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: appColors.baseBlackColor),
                ),
                DropDownButton(
                  title: 'Gender',
                  hint: 'Gender',
                  itm: ['Woman', 'Man', 'Kids'],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
                3: FlexColumnWidth(1),
              },
              border:
              TableBorder.all(color: appColors.baseGrey30Color, width: 2),
              children: [
                buildTableRow(ch: [
                  buildTableRowText(txt: 'US'),
                  buildTableRowText(txt: 'UK'),
                  buildTableRowText(txt: 'Eu'),
                  buildTableRowText(txt: 'JP'),
                ]
                ),
                buildTableRow(ch: [
                  buildTableRowText(txt: '5'),
                  buildTableRowText(txt: '3.5'),
                  buildTableRowText(txt: '3.6'),
                  buildTableRowText(txt: '220'),
                ]
                ),
                buildTableRow(ch: [
                  buildTableRowText(txt: '5.5'),
                  buildTableRowText(txt: '4'),
                  buildTableRowText(txt: '6.0'),
                  buildTableRowText(txt: '2.0'),
                ]
                ),
                buildTableRow(ch: [
                  buildTableRowText(txt: '5.3'),
                  buildTableRowText(txt: '54'),
                  buildTableRowText(txt: '6.0'),
                  buildTableRowText(txt: '5.0'),
                ]
                ),
                buildTableRow(ch: [
                  buildTableRowText(txt: '5.5'),
                  buildTableRowText(txt: '4'),
                  buildTableRowText(txt: '6.0'),
                  buildTableRowText(txt: '2.0'),
                ]
                ),
                buildTableRow(ch: [
                  buildTableRowText(txt: '5.3'),
                  buildTableRowText(txt: '54'),
                  buildTableRowText(txt: '6.0'),
                  buildTableRowText(txt: '5.0'),
                ]
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: appColors.baseWhite60Color
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('In between sizes?', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: appColors.baseBlackColor,
                ),),
                Wrap(children: [
                  Text('For tight fit, \tgo one size down. \n for loose fit, \t go one size up', style: TextStyle(
                    fontSize: 15,
                    color: appColors.baseBlackColor,
                  ),),
                ],)
              ],
            ),
          ),

        ],
      ),
    );
  }
}

TableRow buildTableRow({required List<Widget> ch}){
   return TableRow(
         decoration: BoxDecoration(
           color: appColors.baseWhite60Color,
           border: Border.all(color: appColors.baseGrey30Color),
         ),
         children: ch);
}

Widget buildTableRowText({required String txt}) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Text(txt,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        )),
  );
}

_appBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(
      'Size Guide',
      style: TextStyle(
        color: appColors.baseBlackColor,
      ),
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.info_outline,
            color: Colors.black,
          ))
    ],
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
    ),
  );
}
