import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_ui/constants/HexColor.dart';

class Myorders extends StatefulWidget {
  @override
  _MyordersState createState() => _MyordersState();
}

class _MyordersState extends State<Myorders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon
        (Icons.arrow_back_ios,color: Colors.black),)
        ,title: Text("My Orders",style: TextStyle(color: Colors.black,fontSize: 23),),
        elevation: 0,
        backgroundColor: Colors.white,),
      body:
      Column(
          children: [
            ListView.builder(
                itemCount: 2,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context,index)
                {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(border: Border.all(color: Colors.white30),
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,boxShadow: [
                                BoxShadow(color: Colors.grey,blurRadius: 5),
                                BoxShadow(color: Colors.white, offset: Offset(0, -16)),
                                BoxShadow(color: Colors.white, offset: Offset(0, 16)),
                                BoxShadow(color: Colors.white, offset: Offset(0, 0)),
                                BoxShadow(color: Colors.grey, offset: Offset(0, 1)),
                              ]
                          ),
                          child: Column(
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset("images/pngflow.png", fit: BoxFit.fill,height: 90,width: 90,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Shampoo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                                      Text( "₹ 148"),
                                    ],
                                  ),
                                  SizedBox(width: 100,),
                                  Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Repeat",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: HexColor("#1E1F59")),),
                                      ]
                                  ),
                                ],
                              ),
                              SizedBox(height: 0,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Delivered on : 18-10-2020: 10.00 AM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.grey),),
                                    SizedBox(width: 45,),
                                    Text("YF-001-1829",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.grey),),
                                  ],
                                ),

                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text("Payment Method : COD",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.grey),),
                                  ],
                                ),
                              )],
                          ),

                        ),
                      ],
                    ),
                  );

                }
            ),
          ]
      ),
    );
  }
}
