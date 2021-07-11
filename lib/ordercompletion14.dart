import 'package:flutter/material.dart';

import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:shopping_app_ui/7home.dart';
import 'package:shopping_app_ui/Searchpage16.dart';
import 'package:shopping_app_ui/constants/HexColor.dart';
import 'package:shopping_app_ui/page12mycart.dart';
import 'package:shopping_app_ui/wallet18.dart';
class Complete extends StatefulWidget {
  @override
  _CompleteState createState() => _CompleteState();
}

class _CompleteState extends State<Complete> {
  int currentIndex;

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
      backgroundColor: Colors.white,
      appBar: AppBar(leading: IconButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
        },
        icon: Icon
        (Icons.close,color: Colors.black),

      )
        ,title: Text("Order Complete",style: TextStyle(color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.white,),
      body: ListView(
          children: [
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container
                        (height: 260,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset("images/Empty.png")),
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text("Your Order is placed",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))
                  ],),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text("It is now very easy to reach the best quality",
                      style: TextStyle(color: Colors.grey),
                    ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text("among all the products on the internet!",
                      style: TextStyle(color: Colors.grey),
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 60,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 48,
                          width: 315,
                          // width: 290,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: HexColor("#1F1E59"),
                          ),
                          child: Center(
                            child: Text("Continue Shopping",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ]
      ),
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.only(left: 25,right: 25),
        child: ClipRRect(
          borderRadius : BorderRadius.only(
            bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),),
          child: BubbleBottomBar(
            opacity:0,
            backgroundColor: HexColor("#F5F8FA"),
            currentIndex: currentIndex,
            onTap: changePage,
            items: [
              BubbleBottomBarItem(backgroundColor: HexColor("#F5F8FA") ,
                  icon: Positioned(
                    bottom: 0,
                    child: Icon(Icons.shopping_bag,color: HexColor("#97AABD"),
                    ),
                  ),
                  activeIcon: Icon(Icons.shopping_bag,color: HexColor("#1F1E59")
                    ,
                  ),
                  title: Text("Cart",style: TextStyle(color: HexColor("#1F1E59"),fontWeight: FontWeight.bold),
                  )
              ),
              BubbleBottomBarItem(backgroundColor: HexColor("#F5F8FA") ,
                icon:GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Searchpage()));
                  },
                  child: Icon(Icons.search_rounded,color: HexColor("#97AABD"),
                  ),
                ),
                activeIcon: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Searchpage()));
                  },
                  child: Icon(Icons.search_rounded,color: HexColor("#1F1E59"),
                  ),
                ),
                title: Container(),
              ),
              BubbleBottomBarItem(backgroundColor: HexColor("#F5F8FA") ,
                icon:GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                  child: Icon(Icons.home_outlined,color: HexColor("#97AABD"),
                  ),
                ),
                activeIcon: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                  child: Icon(Icons.home_outlined,color: HexColor("#1F1E59"),
                  ),
                ),
                title: Container(),
              ),
              BubbleBottomBarItem(backgroundColor: HexColor("#F5F8FA") ,
                icon:GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Wallet()));
                  },
                  child: Icon(Icons.person,color: HexColor("#97AABD"),
                  ),
                ),
                activeIcon: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Wallet()));
                  },
                  child: Icon(Icons.person,color: HexColor("#1F1E59"),
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
