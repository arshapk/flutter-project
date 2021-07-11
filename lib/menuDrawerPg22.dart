import 'package:flutter/material.dart';

import 'constants/HexColor.dart';

class MenuDrawePg22 extends StatefulWidget {
  @override
  _MenuDrawePg22State createState() => _MenuDrawePg22State();
}

class _MenuDrawePg22State extends State<MenuDrawePg22> {

  final key2=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key2,
      appBar: AppBar(
        backgroundColor: HexColor("#1F1E59"),
        leadingWidth: 30,
        leading: IconButton(
          onPressed: (){key2.currentState.openDrawer();},
          icon: Icon(Icons.menu,color: Colors.white,),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Delivery location",style: TextStyle(fontSize: 10),),
            Row(children: [
              Text("Kozhikode",style: TextStyle(fontSize: 14),),Icon(Icons.edit_outlined)
            ],)
          ],
        ),
      ),
      drawer: Container(
        padding: EdgeInsets.only(top: 56),
        child: Drawer(
          child: ListView(
            children: [
              GestureDetector(
                onTap: (){

                },
                child: ListTile(
                    leading: Icon(
                        Icons.local_offer_outlined
                    ),
                    title: Text(
                        "Combo offer"
                    ),),
              ),
              GestureDetector(
                onTap: (){

                },
                child: ListTile(
                      leading: Icon(
                        Icons.featured_play_list
                      ),
                      title: Text(
                            "Top Deals"
                      ),),
              ),
              GestureDetector(
                onTap: (){

                },
                child: ListTile(
                        leading: Icon(
                            Icons.bookmark_border
                        ),
                        title: Text(
                              "My Orders"
                        ),),
              ),
              GestureDetector(
                onTap: (){

                },
                child: ListTile(
                        leading: Icon(
                              Icons.favorite
                        ),
                        title: Text(
                              "My Favorites"
                        ),),
              ),
              GestureDetector(
                onTap: (){

                },
                child: ListTile(
                        leading: Icon(
                              Icons.account_balance_wallet
                        ),
                        title: Text(
                              "My Wallet"
                        ),),
              ),
              GestureDetector(
                onTap: (){

                },
                child: ListTile(
                        leading: Icon(
                              Icons.shopping_cart
                        ),
                        title: Text(
                              "My Cart"
                        ),),
              ),
              GestureDetector(
                onTap: (){

                },
                child: ListTile(
                        leading: Icon(
                              Icons.notifications
                        ),
                        title: Text("Notification"),),
              ),
              Container(height: 20,),
              Container(
                  height: 100,width: 10,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(width: 10,),
                        Icon(Icons.share),
                        SizedBox(width: 20,),
                        Text("Share with Friends")
                      ]),SizedBox(height: 10,),
                      Row(children: [
                        SizedBox(width: 10,),
                        Icon(Icons.star),
                        SizedBox(width: 20,),
                        Text("Rate us on Play Store")
                      ]),SizedBox(height: 10,),
                      Row(children: [
                        SizedBox(width: 10,),
                        Icon(Icons.contact_support),
                        SizedBox(width: 20,),
                        Text("Contact and Support")
                      ]),
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
