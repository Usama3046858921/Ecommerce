
import 'package:ecommerce/appColors/appColors.dart';
import 'package:ecommerce/widgets/button_widget.dart';
import 'package:ecommerce/widgets/text_form_field_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);
  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children:  [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Payment',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 5,),
                  Text('Order number is 1235462412',style: TextStyle(
                    fontSize: 10,
                    color: appColors.baseGrey50Color,
                  ),),
                ],
              ),
              ),
              Divider(),
              Container(
                height: 180,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: SweepGradient(
                    center: AlignmentDirectional(1,-1),
                    startAngle: 1.7,
                    endAngle: 3,
                    colors: [
                      Color(0xff148535),
                      Color(0xff148535),
                      Color(0xff0D6630),
                      Color(0xff0D6630),
                      Color(0xff148535),
                      Color(0xff148535),
                    ],
                    stops: [
                      0.0,
                      0.3,
                      0.3,
                      0.7,
                      0.7,
                      1.0,

                    ]
                  )
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('VISA', style: TextStyle(
                          fontSize: 24.30,
                          fontWeight: FontWeight.bold,
                          color: appColors.baseWhiteColor,
                        ),),
                        Text('visa Electron', style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: appColors.baseWhiteColor,
                        ),),
                      ],
                    ),
                    Text('****\t\t****\t\t****\t\t****\t\t 2193', style: TextStyle(
                      fontSize: 24.30,
                      color: appColors.baseWhiteColor,
                      fontWeight: FontWeight.bold,
                    ),),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Card holder', style: TextStyle(
                                  fontSize: 12,
                                  color: appColors.baseWhiteColor,
                                ),),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('John Wick', style: TextStyle(
                                  fontSize: 12,
                                  color: appColors.baseWhiteColor,
                                ),),
                              ],
                            ),),
                            Expanded(child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Expires', style: TextStyle(
                                  fontSize: 12,
                                  color: appColors.baseWhiteColor,
                                ),),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('07\t/\t23', style: TextStyle(
                                  fontSize: 12,
                                  color: appColors.baseWhiteColor,
                                ),),
                              ],
                            ),),
                            Expanded(child: Align(
                              alignment: Alignment.centerRight,
                              child: CircleAvatar(
                                backgroundColor: appColors.baseLightGreenColor,
                                child: Icon(Icons.check,color: appColors.baseWhiteColor,),
                              ),
                            ))
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),
               textFormFieldWidgets('Card holder', false),
              textFormFieldWidgets('Card number', false),
              Row(
                children: [
                  Expanded(child: buildTextFormField(leftpadding: 20, rightpadding: 0, hintText: 'Exp', context: context)),
                  Expanded(child: buildTextFormField(leftpadding: 3, rightpadding: 10, hintText: 'CVV', context: context)),
                  Expanded(child: Container(
                    height: 50,
                    margin: EdgeInsets.only(right: 20),
                    child: ElevatedButton.icon(onPressed: (){},style: ElevatedButton.styleFrom(elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),), backgroundColor: appColors.baseLightOrangeColor, foregroundColor: Colors.grey), icon: Icon(CupertinoIcons.plus, size: 20,color: appColors.baseWhiteColor,), label: Text('Add',style: TextStyle(
                      fontSize: 16,
                      color: appColors.baseWhiteColor,
                    ),)),
                  ),),
                ],
              ),
              SizedBox(height: 10,),
              ListTile(tileColor: Colors.grey[100],
              title: Padding(padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Order Amount', style: TextStyle(
                    fontSize: 18,
                    color: appColors.baseBlackColor,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 5,),
                  Text('Your total amount of discount', style: TextStyle(
                    fontSize: 12,
                    color: appColors.baseBlackColor,
                  ),)
                ],
              ),),
                trailing: Padding(padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Wrap(
                      children: [

                      ],
                    ),

                    Flexible(
                      child: Text('\$103.98', style: TextStyle(
                        fontSize: 14,
                        color: appColors.baseBlackColor,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    SizedBox(height: 5,),
                    Flexible(
                      child: Text('\$55.98', style: TextStyle(
                        fontSize: 12,
                        color: appColors.baseBlackColor,
                      ),),
                    ),
                  ],
                ),),
              ),
              Container(
                color: appColors.baseGrey10Color,
                width: MediaQuery.of(context).size.width-20,
                margin: EdgeInsets.symmetric(horizontal: 23),
                child: btnWidget(context: context, clr: appColors.baseDarkPinkColor, txt: 'Payment Method'),
              ),
              SizedBox(height: 10,),
            ],
          )
        ],
      ),
    );
  }
}

Widget buildTextFormField({required BuildContext context,required double leftpadding, required double rightpadding, required String hintText}){
  return Container(
    // width: MediaQuery.of(context).size.width/2.3,
    margin: EdgeInsets.only(bottom: 20, top: 20, left: leftpadding, right: rightpadding,),
    child: TextField(
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: Colors.grey[100],
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        )
      ),
    ),
  );
}

appBar(){
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.black,size: 40,)),
      IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.delete,color: Colors.black,size: 40,)),
    ],
  );
}