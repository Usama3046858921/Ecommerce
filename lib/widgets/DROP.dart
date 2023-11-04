

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drop extends StatefulWidget {
   Drop({Key? key,required this.selectOpt,required this.item}) : super(key: key);
   bool isOpen = false;
  String selectOpt;
   final List<String> item;
  @override
  State<Drop> createState() => _DropState();
}

class _DropState extends State<Drop> {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                setState(() {
                  widget.isOpen=!widget.isOpen;
                });
              },
              child: Container(
                height: 50,
                color: Colors.white10,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.selectOpt),
                      Icon(widget.isOpen? Icons.keyboard_arrow_up:Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),
            ),
            if(widget.isOpen)
            ListView(
              primary: true,
              shrinkWrap: true,
              children: widget.item.map((e) => Container(
                height: 50,
                color: widget.selectOpt ==e? Colors.grey: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: (){
                        widget.selectOpt=e;
                        widget.isOpen=false;
                        setState(() {

                        });
                      },
                      child: Text(e)),
                ),
              )
              ).toList(),
            )
          ],
        ),
      ),
    );
  }
}