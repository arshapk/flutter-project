import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_ui/7home.dart';
import 'package:shopping_app_ui/Addresspage20.dart';
import 'package:shopping_app_ui/Myorderpage15.dart';
import 'package:shopping_app_ui/Searchpage16.dart';
import 'package:shopping_app_ui/editProfilePg19.dart';
import 'package:shopping_app_ui/page12mycart.dart';

import 'constants/HexColor.dart';
import 'favouritespg21.dart';


class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {

  int cindex=0;
  int currentIndex;
  int _counter=0;
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

  void changeci (int index){
    setState(() {
      cindex= index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: Icon(Icons.account_balance_wallet_outlined,color: HexColor("#97AABD"),
                    ),
                  ),
                  activeIcon: Icon(Icons.account_balance_wallet_rounded,color: HexColor("#1F1E59")
                    ,
                  ),
                  title: Text("",style: TextStyle(color: HexColor("#1F1E59"),fontWeight: FontWeight.bold),
                  )
              ),
              BubbleBottomBarItem(backgroundColor: HexColor("#F5F8FA") ,
                icon:GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Searchpage()));
                  },
                  child: Icon(EvaIcons.searchOutline,color: HexColor("#97AABD"),
                  ),
                ),
                activeIcon: Icon(EvaIcons.search,color: HexColor("#1F1E59"),
                ),
                title: Container(),
              ),
              BubbleBottomBarItem(backgroundColor: HexColor("#F5F8FA") ,
                icon:Icon(
                  EvaIcons.homeOutline,color: HexColor("#97AABD"),
                ),
                activeIcon: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                  child: Icon(
                    EvaIcons.home,color: HexColor("#1F1E59"),
                  ),
                ),
                title: Container(),
              ),
              BubbleBottomBarItem(backgroundColor: HexColor("#F5F8FA") ,
                icon:Icon(EvaIcons.personOutline,color: HexColor("##1F1E59"),
                ),
                activeIcon: Icon(EvaIcons.person,color: HexColor("#1F1E59"),
                ),
                title: Container(),
              ),
            ],

          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                //width: 360,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: HexColor("#1F1E59")),
              ),
              Positioned(
                left: 40,top: 50,
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 100,width: 280,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Reghana",style: TextStyle(fontSize: 16),),
                          SizedBox(width: 170,),
                          GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfilePg19()));
                              },
                              child: Text("Edit",style: TextStyle(color: Colors.grey),))
                        ],
                      ),
                      SizedBox(height: 5,),
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Adde()));
                          },
                          child: Text("Palayam, kozhikode",style: TextStyle(color: Colors.grey),)),
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Adde()));
                          },
                          child: Text("kerala, 673000",style: TextStyle(color: Colors.grey),)),
                      Text("+91 7012345678",style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Myorders()));
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 50,width: 300,
              decoration: BoxDecoration(
                color: Colors.white,borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2, spreadRadius: 0, offset: Offset(0,1))],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Orders"),Icon(Icons.navigate_next,color: HexColor("#1F1E59"),)
                ],
              ),
            ),
          ),
          SizedBox(height: 5,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Favourite21()));
            },
            child: Container(
                padding: EdgeInsets.all(10),
                height: 50,width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2, spreadRadius: 0, offset: Offset(0,1))],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My Favorites"),Icon(Icons.navigate_next,color: HexColor("#1F1E59"),)
                  ],
                )
            ),
          ),
          SizedBox(height: 5,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Mycart()));
            },

            child: Container(
                padding: EdgeInsets.all(10),
                height: 50,width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2, spreadRadius: 0, offset: Offset(0,1))],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My Cart"),Icon(Icons.navigate_next,color: HexColor("#1F1E59"),)
                  ],
                )
            ),
          ),
          SizedBox(height: 5,),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 130,width: 300,
                decoration: BoxDecoration(
                  color: HexColor("#1F1E59"),borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2, spreadRadius: 0, offset: Offset(0,1))],
                ),
              ),
              Positioned(top: 10,left: 10, child: Text("My Wallet",style: TextStyle(color: Colors.white),)),
              Positioned(top: 50,left: 40, child: Text("Current Balance",style: TextStyle(color: Colors.white),)),
              Positioned(top: 45,left: 10,child: Icon(Icons.account_balance_wallet_outlined,color: Colors.white,)),
              Positioned(top: 10,right: 10,child: Icon(Icons.keyboard_arrow_down,color: Colors.white,)),
              Positioned(bottom: 20,right: 30, child: Text("Rs "+"0.00",style: TextStyle(color: Colors.white,fontSize: 20),)),
            ],
          ),
        ],
      ),
    );
  }
}
