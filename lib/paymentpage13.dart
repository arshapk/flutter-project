import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:shopping_app_ui/7home.dart';
import 'package:shopping_app_ui/Addresspage20.dart';
import 'package:shopping_app_ui/Searchpage16.dart';
import 'package:shopping_app_ui/constants/HexColor.dart';
import 'package:shopping_app_ui/editProfilePg19.dart';
import 'package:shopping_app_ui/ordercompletion14.dart';
import 'package:shopping_app_ui/page12mycart.dart';
import 'package:shopping_app_ui/wallet18.dart';
class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  bool ischeck= false;
  int currentIndex;
  int selectedValue=1;
  bool showRaisedButtonBadge=true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex=0;
  }
  changePage(int index)
  {
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#F5F5F5"),
        appBar: AppBar(leading:  IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon
          (Icons.arrow_back_ios,color: Colors.black),),
          title: Text("Payment",style: TextStyle(color: Colors.black,fontSize: 21),)
          ,backgroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Column(
                children: [
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Container(
                        //height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        height: 189,
                        //width: 305,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 17),
                                  child: Text("Payment Methods",style: TextStyle(color: Colors.grey),),
                                ),
                              ],
                            ),SizedBox(height: 0,),
                            ListTile(leading:Text("Cash on Delivery",style: TextStyle(fontSize: 14),),

                              trailing: Radio(
                                value: 1,
                                groupValue: selectedValue,
                                onChanged: (value)
                                {
                                  setState(()
                                  {
                                   selectedValue=1;
                                  }
                                  );
                                },
                              ),
                            ),
                            ListTile(leading:Text("Swipe on Delivery",style: TextStyle(fontSize: 14),),

                              trailing: Radio(
                                value:2,
                                groupValue: selectedValue,
                                onChanged: (value)
                                {
                                  setState(()
                                  {
                                    selectedValue=2;
                                  }
                                  );
                                },
                              ),
                            ),
                            ListTile(leading:Text("Online Payment",style: TextStyle(fontSize: 14),),

                              trailing: Radio(
                                value: 3,
                                groupValue: selectedValue,
                                onChanged: (value)
                                {
                                  setState(()
                                  {
                                    selectedValue=3;
                                  }
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),SizedBox(height: 5,),
                  Row(
                    children: [
                      Container(
                        //width: 305,
                          width: MediaQuery.of(context).size.width,
                          height: 90,
                          decoration: BoxDecoration(color: Colors.white),
                          child: ListTile(
                            title: Text("WalletBalance 0.0"),
                            subtitle: TextFormField(keyboardType: TextInputType.number,

                              decoration: InputDecoration(hintText: "Enter Amount"),
                            ),
                            trailing: GestureDetector(

                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Wallet()));
                                },

                              child: Container(
                                height: 25,
                                width: 90,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: HexColor("#1F1E59")),
                                child: Center(child: Text("Redeem",style: TextStyle(color: Colors.white),)),
                              ),
                            ),
                          )
                      )
                    ],
                  ),SizedBox(height: 5,),
                  Row(
                    children: [
                      Container(
                        height: 100,
                        // width: 305,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color: Colors.white),
                        child: ListTile(
                          title: Text("Redeem Coupon"),
                          subtitle: TextFormField(keyboardType: TextInputType.name,

                            decoration: InputDecoration(hintText: "Enter Coupon Code",
                              border: OutlineInputBorder(
                              ),),),
                          trailing: GestureDetector(
                            onTap: (){

                            },
                            child: Container(
                              height: 25,
                              width: 90,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: HexColor("#1F1E59")),
                              child: Center(child: Text("Apply",style: TextStyle(color: Colors.white),)),
                            ),
                          ),
                        ),
                      )
                    ],),SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(height: 70,
                        //width: 305,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color: Colors.white),
                        child: ListTile(
                          title: Text("To be Delivereed in Carry Bags"),
                          subtitle: Text("(Rs 20% off carry bags)",style: TextStyle(color: Colors.grey),),
                          trailing: Checkbox(
                              value: ischeck,
                              checkColor: Colors.white,  // color of tick Mark
                              activeColor: HexColor("1F1E59"),
                              onChanged: (bool value) {
                                setState(() {
                                  ischeck = value;
                                });
                              }),
                        ),
                      )
                    ],
                  ),SizedBox(height: 8,),
                  Row(children: [
                    Container(
                      height: 110,
                      //width: 305,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.white),
                      child: ListTile(
                        title: Text("Delivery Address"),
                        subtitle: Text("Johne" "\nHouse""\nCalicut \n673000 \n+91 789568636"),
                        trailing: GestureDetector(
                          onTap: (){
                            //  Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                          },
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfilePg19()));
                            },
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Adde()));
                              },
                              child: Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(border: Border.all(color: HexColor("#1F1E59")),color: HexColor("#1F1E59"),
                                ),child: Center(child: Text("Edit Address",style: TextStyle(color: Colors.white),)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],),
                  SizedBox(height: 05,),
                  Container(
                    height: 70,
                    // width: 305,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 17),
                          child: Text("Payment Details",style: TextStyle(fontSize: 21),),
                        ),
                      ],
                    ),),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 17),
                        child: Container(
                          height: 30,
                          width: 300,

                          decoration: BoxDecoration(color: Colors.white),
                          child: Row(
                              children: [
                                Text("Total",style: TextStyle(fontSize: 15),),
                                SizedBox(width: 200,),
                                Text("₹ 148"),
                              ]
                          ),
                        ),
                      ),

                    ],
                  ),SizedBox(height: 1,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 17),
                        child: Container(
                          height: 30,
                           width: 300,
                         // width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Row(
                              children: [
                                Text("Delivery Charge",style: TextStyle(fontSize: 15),),
                                SizedBox(width: 130,),
                                Text("₹ 12"),
                              ]
                          ),
                        ),
                      ),

                    ],
                  ),SizedBox(height: 1,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 17),
                        child: Container(
                          height: 30,
                           width: 300,
                          //width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Row(
                              children: [
                                Text("Carry Bag Charge",style: TextStyle(fontSize: 15),),
                                SizedBox(width: 120,),
                                Text("₹ 40"),
                              ]
                          ),
                        ),
                      ),


                    ],
                  ),SizedBox(height: 1,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 17),
                        child: Container(
                          height: 30,
                         // width: MediaQuery.of(context).size.width,
                          width: 300,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Row(
                              children: [
                                Text("Total",style: TextStyle(fontSize: 15),),
                                SizedBox(width: 200,),
                                Text("₹ 200"),

                              ]
                          ),
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          height: 17,
                          //width: 300,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Row(
                              children: [SizedBox(width: 200,),
                                Text("You Save ₹15.0",style: TextStyle(color: HexColor("#1F1E59"),fontWeight: FontWeight.bold),),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),SizedBox(height: 5,),

                  //                 leading: Text("Total ₹200 ",style: TextStyle(),),
                  //                 trailing: Container(
                  //                   height: 25,
                  //                   width: 90,
                  //                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: HexColor("#1F1E59")),
                  //                   child: Center(child: Text("Apply",style: TextStyle(color: Colors.white),),),
                  Row(
                      children: [
                        Container(
                          height: 60,
                          // width: 305,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(color: Colors.white),
                          child: ListTile(title: Text("Total ₹200 ",style: TextStyle(),),
                            trailing: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Complete()));
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: 5),
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: HexColor("#1F1E59")),
                                child: Row(
                                  children: [
                                    Center(child: Text("Proceed",style: TextStyle(color: Colors.white),)),
                                    SizedBox(width: 15,),
                                    Center(child:
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 10,
                                      child: IconButton(
                                        padding: EdgeInsets.zero,
                                        icon: Icon(Icons.arrow_forward_ios_outlined),
                                        color: Colors.black,
                                        iconSize: 10,
                                        onPressed: () {},
                                      ),
                                    ),

                                    )

                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]
                  )
                ],
              ),
            )
          ],
        ),
        // bottomNavigationBar:Padding(
        //   padding: const EdgeInsets.only(left: 25,right: 25),
        //   child: ClipRRect(
        //     borderRadius : BorderRadius.only(
        //       bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),),
        //     child: BubbleBottomBar(
        //       opacity:0,
        //       backgroundColor: HexColor("#F5F8FA"),
        //       currentIndex: currentIndex,
        //       onTap: changePage,
        //       items: [
        //         BubbleBottomBarItem(backgroundColor: HexColor("#F5F8FA") ,
        //             icon: Positioned(
        //               bottom: 0,
        //               child: Icon(Icons.shopping_bag,color: HexColor("#97AABD"),
        //               ),
        //             ),
        //             activeIcon: Icon(Icons.shopping_bag,color: HexColor("#1F1E59")
        //               ,
        //             ),
        //             title: Text("Cart",style: TextStyle(color: HexColor("#1F1E59"),fontWeight: FontWeight.bold),
        //             )
        //         ),
        //         BubbleBottomBarItem(backgroundColor: HexColor("#F5F8FA") ,
        //           icon:Icon(Icons.search_rounded,color: HexColor("#97AABD"),
        //           ),
        //           activeIcon: Icon(Icons.search_rounded,color: HexColor("#1F1E59"),
        //           ),
        //           title: Container(),
        //         ),
        //         BubbleBottomBarItem(backgroundColor: HexColor("#F5F8FA") ,
        //           icon:Icon(Icons.home_outlined,color: HexColor("#97AABD"),
        //           ),
        //           activeIcon: Icon(Icons.home_outlined,color: HexColor("#1F1E59"),
        //           ),
        //           title: Container(),
        //         ),
        //         BubbleBottomBarItem(backgroundColor: HexColor("#F5F8FA") ,
        //           icon:Icon(Icons.person,color: HexColor("#97AABD"),
        //           ),
        //           activeIcon: Icon(Icons.person,color: HexColor("#1F1E59"),
        //           ),
        //           title: Container(),
        //         ),
        //       ],
        //
        //     ),
        //   ),
        // )
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left:30.0),
        child: ClipRRect(
          borderRadius : BorderRadius.only(
            bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),),
          child: BubbleBottomBar(
            elevation: 0.0,
            opacity:0,
            backgroundColor: Colors.grey[100],
            currentIndex: currentIndex,
            onTap: changePage,
            items: [
              BubbleBottomBarItem(backgroundColor: HexColor("#F8F8F8") ,
                  icon: Positioned(
                    bottom: 0,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                      },
                      child: Icon(EvaIcons.homeOutline,color: HexColor("#97AABD"),
                      ),
                    ),
                  ),
                  activeIcon: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                    child: Icon(EvaIcons.home,color: HexColor("#1F1E59")
                      ,
                    ),
                  ),
                  title: Text("Home",style: TextStyle(color: HexColor("#1F1E59"),fontWeight: FontWeight.bold),
                  )
              ),
              BubbleBottomBarItem(backgroundColor: HexColor("#F5F8FA") ,
                icon:GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Searchpage()));
                    },
                    child: Icon(EvaIcons.searchOutline,color: HexColor("#97AABD"),
                    ),
                  ),
                ),
                activeIcon: Icon(EvaIcons.search,color: HexColor("#1F1E59"),
                ),
                title: Container(),
              ),
              BubbleBottomBarItem(backgroundColor: HexColor("#F5F8FA") ,
                icon:GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Mycart()));
                  },
                  child: Icon(EvaIcons.shoppingBagOutline,color: HexColor("#97AABD"),
                  ),
                ),
                activeIcon: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Mycart()));
                  },
                  child: Icon(EvaIcons.shoppingBag,color: HexColor("#1F1E59"),
                  ),
                ),
                title: Container(),
              ),
              BubbleBottomBarItem(backgroundColor: HexColor("#F5F8FA") ,
                icon:GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Wallet()));
                  },
                  child: Icon(EvaIcons.personOutline,color: HexColor("##1F1E59"),
                  ),
                ),
                activeIcon: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Wallet()));
                  },
                  child: Icon(EvaIcons.person,color: HexColor("#1F1E59"),
                  ),
                ),
                title: Container(),
              ),
            ],

          ),
        ),
      ),
    );
  }
}