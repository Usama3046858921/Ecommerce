


import 'package:ecommerce/appColors/appColors.dart';
import 'package:flutter/material.dart';

class PriceExpansionTile extends StatefulWidget {
  const PriceExpansionTile({Key? key}) : super(key: key);

  @override
  State<PriceExpansionTile> createState() => _PriceExpansionTileState();
}

class _PriceExpansionTileState extends State<PriceExpansionTile> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('Price', style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: appColors.baseBlackColor,
      ),),
      children: [
        Padding(padding: EdgeInsets.all(10),
          child: Column(
            children: [
              RangeSlider(values: _currentRangeValues,min: 0,max: 1000,labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.start.round().toString(),
              ), onChanged: (RangeValues va){
                setState(() {
                  _currentRangeValues = va;
                });
              }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$\t${_currentRangeValues.start.toInt()}",style: TextStyle(
                    fontSize: 18,
                    color: appColors.baseBlackColor,
                  ),),
                  Text("\$\t${_currentRangeValues.end.toInt()}",style: TextStyle(
                    fontSize: 18,
                    color: appColors.baseBlackColor,
                  ),),
                ],
              ),
            ],
          ),)
      ],
    );
  }
}
