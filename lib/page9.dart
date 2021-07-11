import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_ui/page12mycart.dart';
import 'package:shopping_app_ui/wallet18.dart';
import '10homecategory.dart';
import 'ComboOfferPg24.dart';
import 'Myorderpage15.dart';
import 'Searchpage16.dart';
import 'constants/HexColor.dart';
import 'dealspg23.dart';
import 'favouritespg21.dart';
import 'notification25.dart';

class Beauty extends StatefulWidget {
  @override
  _BeautyState createState() => _BeautyState();
}

class _BeautyState extends State<Beauty> {
  final DrawerKey= GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: DrawerKey,
      drawer: Container(
        padding: EdgeInsets.only(top: 56),
        child: Drawer(
          child: ListView(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Combodeal24()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Deals23()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Myorders()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Favourite21()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Wallet()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Mycart()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Noti()));
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


      appBar:PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
        elevation: 10,
        leadingWidth: 25,
        backgroundColor: HexColor("#1F1E59"),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size:30,
          ),
          splashColor: Colors.white,
          onPressed: () {
            DrawerKey.currentState.openDrawer();
          },

        ),
        title: Container(
          width: MediaQuery.of(context).size.width,


          child: Row(
              children: [
                Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: -15,
                  children:[

                  Text("Kozhikode",
                  style: TextStyle(
                      color: HexColor("#FFFFFF"),
                      fontSize: 14
                  ),
                ),

                IconButton(
                  icon: Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                  splashColor: Colors.grey,
                    onPressed: () {},

                ),
                ]
                ),
                SizedBox(width: 45,),
                Container(
                  height:24,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                  ),
                  child: Row(

                    children: [
                      Container(
                        //margin:EdgeInsets.only(top: 9),
                        padding: EdgeInsets.only(left: 10,),
                        width: 100,
                        child: TextField(

                          showCursor: false,
                          decoration: InputDecoration(
                             // border: OutlineInputBorder(),
                              hintText: "Search here",
                              hintStyle: TextStyle(
                                  fontSize: 10,
                                  color: HexColor("#1F1E59")
                              )
                          ),
                        ),
                      ),
                      IconButton(padding: EdgeInsets.only(left: 10,),
                        icon: Icon(
                          Icons.search_rounded,
                          color: Colors.grey,
                          size: 18,
                        ),
                        splashColor: Colors.black54,
                        onPressed: () {},

                      ),
                    ],
                  ),
                )
              ],
          ),
        )

      ),
      ),

      body: Column(
          children: [
            SizedBox(height: 10),
            DefaultTabController(
              length: 7,
              child: TabBar(
                  isScrollable: true,
                  labelColor: Colors.white,
                  unselectedLabelColor: HexColor('#1F1E59'),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0)),
                      color: HexColor('#1F1E59')
                  ),
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Tab(
                        child: Container(
                          width: 80,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Beauty"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Tab(
                        child: Container(
                          width: 80,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Vegetables"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Tab(
                        child: Container(
                          width: 80,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Meat"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Tab(
                        child: Container(
                          width: 80,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Cake"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Tab(
                        child: Container(
                          width: 80,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Beverage"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Tab(
                        child: Container(
                          width: 80,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Instant Food"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Tab(
                        child: Container(
                          width: 80,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Grocery"),
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 13,),
                Column(
                  children: [
                        Container(

                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0, // soften the shadow
                                spreadRadius: .50, //extend the shadow

                              )
                            ],
                          ),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeCat10()));
                            },
                            child: Image.asset(
                                "images/page9pic2.jpg",
                                height: 104,
                                width: 122,
                                fit: BoxFit.cover,
                            ),
                          ),
                        ),
                  ],
                ),
                SizedBox(width: 7,),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5.0, // soften the shadow
                            spreadRadius: .50, //extend the shadow

                          )
                        ],
                      ),
                      child: Image.asset(
                          "images/page9pic1.jpg",
                          height: 104,
                          width: 122,
                          fit: BoxFit.cover
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 14,),
                Text(
                    "Bath And Oral Care",
                    style: TextStyle(
                      fontSize: 14,
                      color: HexColor("#000000")
                    ),
                ),
                SizedBox(width: 34,),
                Text(
                  "Face Care",
                  style: TextStyle(
                      fontSize: 14,
                      color: HexColor("#000000")
                  ),
                )
              ],
            )
          ],
      ),
    );
  }
}
