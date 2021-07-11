import 'package:flutter/material.dart';
import 'package:shopping_app_ui/11homecategory.dart';
import 'package:shopping_app_ui/constants/HexColor.dart';
import 'package:shopping_app_ui/page12mycart.dart';
import 'package:shopping_app_ui/wallet18.dart';

import 'ComboOfferPg24.dart';
import 'Myorderpage15.dart';
import 'dealspg23.dart';
import 'favouritespg21.dart';
import 'notification25.dart';

class HomeCat10 extends StatefulWidget {
  @override
  _HomeCat10State createState() => _HomeCat10State();
}

class _HomeCat10State extends State<HomeCat10> {
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
                leadingWidth: 25,
                  backgroundColor: HexColor("#1F1E59"),
                  leading: IconButton(
                        icon: Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: 30,
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
                              Text(
                                  "Kozhikode",
                                    style: TextStyle(
                                        color: HexColor("#FFFFFF"),
                                        fontSize: 14
                                    ),
                               ),
                                IconButton(
                                      icon: Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.white,
                                              size: 14,
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
                                            borderRadius: BorderRadius.circular(7),
                                            color: Colors.white,
                                            ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                                Container(
                                                      padding: EdgeInsets.only(top: 10),
                                                      width: 100,
                                                      child: TextField(
                                                              decoration: InputDecoration(
                                                              border: OutlineInputBorder(
                                                                borderSide: BorderSide.none,
                                                              ),
                                                              hintText: "Search here",
                                                              hintStyle: TextStyle(
                                                                  fontSize: 10,
                                                                  color: HexColor("#1F1E59") )
                                                              ),
                                                    ),
                                                ),
                                                  IconButton(padding: EdgeInsets.only(left: 10,),
                                                          icon: Icon(
                                                              Icons.search_rounded,
                                                              color: Colors.grey,
                                                              size: 14,
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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.black,
                        size: 24,
                      ),
                      splashColor: Colors.grey,
                      onPressed: (){
                        Navigator.pop(context);
                      }
                  ),
                  SizedBox(width: 95,),
                  Text(" bath & oral care ",
                    style: TextStyle(
                        backgroundColor: Colors.grey[300],
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(" Face care",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 240,
                        width: 165,
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                        ),
                        child: Stack(
                          children: [
                                Center(
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeCat11()));
                                    },
                                    child: Image.asset(
                                        "images/pg11shampoo.png",
                                          fit: BoxFit.cover,
                                        height: 150,
                                        width: 150,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: -10,
                                  left: -5,
                                  child: IconButton(
                                      icon: Icon(
                                          Icons.add_box_outlined,
                                          color: Colors.black,
                                          size: 25,
                                      ),
                                    onPressed: (){

                                    },
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 0,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.red[200],
                                    ),
                                    child: IconButton(
                                      padding: EdgeInsets.all(0),
                                        icon: Icon(
                                          Icons.favorite_border_rounded,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        onPressed: (){

                                        }
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left:10 ,
                                    child: Text(
                                      "Shampoo",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15
                                      ),
                                    )),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                    child: Text(
                                          "₹148",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15
                                          ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(
                        height: 240,
                        width: 165,
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: Image.asset(
                                "images/soapklar.png",
                                fit: BoxFit.cover,
                                height: 150,
                                width: 150,
                              ),
                            ),
                            Positioned(
                              top: -10,
                              left: -5,
                              child: IconButton(
                                icon: Icon(
                                  Icons.add_box_outlined,
                                  color: Colors.black,
                                  size: 25,
                                ),
                                onPressed: (){

                                },
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 0,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.red[200],
                                ),
                                child: IconButton(
                                    padding: EdgeInsets.all(0),
                                    icon: Icon(
                                      Icons.favorite_border_rounded,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    onPressed: (){

                                    }
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 10,
                                left:10 ,
                                child: Text(
                                  "Soap",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15
                                  ),
                                )),
                            Positioned(
                                bottom: 10,
                                right: 10,
                                child: Text(
                                  "₹148",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 240,
                        width: 165,
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeCat11()));
                                },
                                child: Image.asset(
                                  "images/pg11shampoo.png",
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: 150,
                                ),
                              ),
                            ),
                            Positioned(
                              top: -10,
                              left: -5,
                              child: IconButton(
                                icon: Icon(
                                  Icons.add_box_outlined,
                                  color: Colors.black,
                                  size: 25,
                                ),
                                onPressed: (){

                                },
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 0,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.red[200],
                                ),
                                child: IconButton(
                                    padding: EdgeInsets.all(0),
                                    icon: Icon(
                                      Icons.favorite_border_rounded,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    onPressed: (){

                                    }
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 10,
                                left:10 ,
                                child: Text(
                                  "Shampoo",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15
                                  ),
                                )),
                            Positioned(
                                bottom: 10,
                                right: 10,
                                child: Text(
                                  "₹148",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(
                        height: 240,
                        width: 165,
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: Image.asset(
                                "images/soapklar.png",
                                fit: BoxFit.cover,
                                height: 150,
                                width: 150,
                              ),
                            ),
                            Positioned(
                              top: -10,
                              left: -5,
                              child: IconButton(
                                icon: Icon(
                                  Icons.add_box_outlined,
                                  color: Colors.black,
                                  size: 25,
                                ),
                                onPressed: (){

                                },
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 0,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.red[200],
                                ),
                                child: IconButton(
                                    padding: EdgeInsets.all(0),
                                    icon: Icon(
                                      Icons.favorite_border_rounded,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    onPressed: (){

                                    }
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 10,
                                left:10 ,
                                child: Text(
                                  "Soap",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15
                                  ),
                                )),
                            Positioned(
                                bottom: 10,
                                right: 10,
                                child: Text(
                                  "₹148",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 240,
                        width: 165,
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeCat11()));
                                },
                                child: Image.asset(
                                  "images/pg11shampoo.png",
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: 150,
                                ),
                              ),
                            ),
                            Positioned(
                              top: -10,
                              left: -5,
                              child: IconButton(
                                icon: Icon(
                                  Icons.add_box_outlined,
                                  color: Colors.black,
                                  size: 25,
                                ),
                                onPressed: (){

                                },
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 0,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.red[200],
                                ),
                                child: IconButton(
                                    padding: EdgeInsets.all(0),
                                    icon: Icon(
                                      Icons.favorite_border_rounded,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    onPressed: (){

                                    }
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 10,
                                left:10 ,
                                child: Text(
                                  "Shampoo",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15
                                  ),
                                )),
                            Positioned(
                                bottom: 10,
                                right: 10,
                                child: Text(
                                  "₹148",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(
                        height: 240,
                        width: 165,
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: Image.asset(
                                "images/soapklar.png",
                                fit: BoxFit.cover,
                                height: 150,
                                width: 150,
                              ),
                            ),
                            Positioned(
                              top: -10,
                              left: -5,
                              child: IconButton(
                                icon: Icon(
                                  Icons.add_box_outlined,
                                  color: Colors.black,
                                  size: 25,
                                ),
                                onPressed: (){

                                },
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 0,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.red[200],
                                ),
                                child: IconButton(
                                    padding: EdgeInsets.all(0),
                                    icon: Icon(
                                      Icons.favorite_border_rounded,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    onPressed: (){

                                    }
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 10,
                                left:10 ,
                                child: Text(
                                  "Soap",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15
                                  ),
                                )),
                            Positioned(
                                bottom: 10,
                                right: 10,
                                child: Text(
                                  "₹148",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
