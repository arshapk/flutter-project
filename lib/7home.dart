//import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:shopping_app_ui/11homecategory.dart';
//import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shopping_app_ui/ComboOfferPg24.dart';
import 'package:shopping_app_ui/Myorderpage15.dart';
import 'package:shopping_app_ui/Searchpage16.dart';
import 'package:shopping_app_ui/dealspg23.dart';
import 'package:shopping_app_ui/notification25.dart';
import 'package:shopping_app_ui/page12mycart.dart';
import 'package:shopping_app_ui/page9.dart';
//import 'package:shopping_app_ui/page9.dart';
import 'package:shopping_app_ui/wallet18.dart';
import 'constants/HexColor.dart';
import 'favouritespg21.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:http/http.dart';
//import 'package:shopping_app_ui/models/bottom_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
enum BottomIcons { Home, Favorite, Search, Account }

class _HomePageState extends State<HomePage> {

  BottomIcons bottomIcons = BottomIcons.Home;
  final DrawerKey= GlobalKey<ScaffoldState>();

  final List<String> imageList = [
    "images/of1.jpg",
    "images/off2.jpg",
    "images/off3.jpg",
    "images/offerss.jpg",
    "images/youth.jpg",
  ];


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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
          key: DrawerKey,
          drawer: Container(
            padding: EdgeInsets.only(top: 95,right: 120),
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
                        child: Icon(EvaIcons.homeOutline,color: HexColor("#97AABD"),
                        ),
                      ),
                      activeIcon: Icon(EvaIcons.home,color: HexColor("#1F1E59")
                        ,
                      ),
                      title: Text("Home",style: TextStyle(color: HexColor("#1F1E59"),fontWeight: FontWeight.bold),
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
                    icon:GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Mycart()));
                      },
                      child: Icon(EvaIcons.shoppingBagOutline,color: HexColor("#97AABD"),
                      ),
                    ),
                    activeIcon: Icon(EvaIcons.shoppingBag,color: HexColor("#1F1E59"),
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
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: AppBar(
              leadingWidth: 20,
                backgroundColor: HexColor("#1F1E59"),
                leading: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 25,
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
                      Text(
                        "Kozhikode",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                          size: 14,
                        ),
                          splashColor: Colors.transparent,
                          onPressed: () {
                            showDialog(context: context,
                                builder: (BuildContext context) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 350),
                                    child: AlertDialog(
                                      backgroundColor: HexColor("#1F1E59"),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      elevation: 30,
                                      content: Stack(
                                        overflow: Overflow.visible,
                                        children: <Widget>[
                                          Positioned(right: .0, top: 0,left: 0,
                                            child: InkResponse(
                                              onTap: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text("Choose Nearest Store"
                                                ,style: TextStyle(color: Colors.white),),),),
                                          SizedBox(height: 40,),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(0,20, 0, 0),
                                                child: Center(
                                                  child: Container(
                                                    height: 25, width: 200,
                                                    decoration: BoxDecoration(color: HexColor("1F1E59"),border: Border.all(color: Colors.white)),
                                                    child:
                                                    Text("Kozhikode",style: TextStyle(color: Colors.white),),
                                                    // TextFormField(
                                                    //   keyboardType: TextInputType.name,
                                                    //   decoration: InputDecoration(border: OutlineInputBorder()),)
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          }
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Searchpage()));
                        },
                        child: Container(
                          height: 24,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:8.0,top: 6.0),
                                child: Text("Search here",style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.grey.withOpacity(0.50)
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:45),
                                child: IconButton(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  icon: Icon(
                                    Icons.search_rounded,
                                    color: Colors.grey,
                                    size: 14,
                                  ),
                                  splashColor: Colors.black54,
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),

            ),
          ),

          body:
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom:60.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 5,),
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
                            Tab(
                              child: Container(
                                width: 80,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("Grocery"),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: 80,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("Vegetables"),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: 80,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("Meat"),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: 80,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("Cake"),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: 80,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("Beverage"),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: 80,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("Instant Food"),
                                ),
                              ),
                            ),
                            Tab(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Beauty()));
                                },
                                child: Container(
                                  width: 80,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Beauty"),

                                  ),
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),
                    GFCarousel(
                      items: imageList.map(
                            (url) {
                          return Container(
                            margin: EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              child: Image.asset(
                                  url,
                                  fit: BoxFit.fitWidth,
                                  width: 1000.0
                              ),
                            ),
                          );
                        },
                      ).toList(),
                      onPageChanged: (index) {
                        setState(() {
                          index;
                        });
                      },
                      autoPlay: true,
                      pagination: true,
                      activeIndicator: HexColor('#1F1E59'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Icon(Icons.circle,color: HexColor('#849DFE').withOpacity(.20),)
                            ],
                          ),
                          SizedBox(width: 3,),
                          Column(
                            children: [
                              Text("Top Deals")
                            ],
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left:10.0,right: 10.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeCat11()));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 5,right: 5,left: 5,bottom: 5),
                                    height: 140,
                                    width: MediaQuery.of(context).size.width/4,
                                    decoration: BoxDecoration(
                                        //color: Colors.blue[100]
                                    ),
                                    child: Stack(
                                      children: [

                                        Positioned(
                                            child: Image.asset("images/pg11shampoo.png")
                                        ),

                                        Positioned(
                                            bottom: 18,
                                            child:Text(
                                                "Shampoo"
                                            )),

                                        Positioned(
                                          bottom: 20,
                                          right: 5,
                                          child:Icon(
                                            Icons.favorite_border,
                                            size: 15,
                                          ),
                                        ),
                                        Positioned(
                                            bottom: 0,
                                            child: Text(
                                                "₹148"
                                            )),
                                        Positioned(
                                            bottom: 0,
                                            right: 5,
                                            child: Text(
                                                "₹200",
                                                style: TextStyle(
                                                    decoration: TextDecoration.lineThrough
                                                ))),

                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 5,),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 5,right: 5,left: 5,bottom: 5),
                                  height: 140,
                                  width: MediaQuery.of(context).size.width/4,
                                  decoration: BoxDecoration(
                                      // color: Colors.blue[100]
                                  ),
                                  child: Stack(
                                    children: [

                                      Positioned(
                                          child: Image.asset("images/soap.png")
                                      ),

                                      Positioned(
                                          bottom: 18,
                                          child:Text(
                                              "KLAR"
                                          )),

                                      Positioned(
                                        bottom: 20,
                                        right: 5,
                                        child:Icon(
                                          Icons.favorite_border,
                                          size: 15,
                                        ),
                                      ),
                                      Positioned(
                                          bottom: 0,
                                          child: Text(
                                              "₹148"
                                          )),
                                      Positioned(
                                          bottom: 0,
                                          right: 5,
                                          child: Text(
                                              "₹200",
                                              style: TextStyle(
                                                  decoration: TextDecoration.lineThrough
                                              ))),

                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 5,),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeCat11()));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 5,right: 5,left: 5,bottom: 5),
                                    height: 140,
                                    width: MediaQuery.of(context).size.width/4,
                                    decoration: BoxDecoration(
                                        // color: Colors.blue[100]
                                    ),
                                    child: Stack(
                                      children: [

                                        Positioned(
                                            child: Image.asset("images/pg11shampoo.png")
                                        ),

                                        Positioned(
                                            bottom: 18,
                                            child:Text(
                                                "Shampoo"
                                            )),

                                        Positioned(
                                          bottom: 20,
                                          right: 5,
                                          child:Icon(
                                            Icons.favorite_border,
                                            size: 15,
                                          ),
                                        ),
                                        Positioned(
                                            bottom: 0,
                                            child: Text(
                                                "₹148"
                                            )),
                                        Positioned(
                                            bottom: 0,
                                            right: 5,
                                            child: Text(
                                                "₹200",
                                                style: TextStyle(
                                                    decoration: TextDecoration.lineThrough
                                                ))),

                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 5,),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 5,right: 5,left: 5,bottom: 5),
                                  height: 140,
                                  width: MediaQuery.of(context).size.width/4,
                                  decoration: BoxDecoration(
                                      // color: Colors.blue[100]
                                  ),
                                  child: Stack(
                                    children: [

                                      Positioned(
                                          child: Image.asset("images/soap.png")
                                      ),

                                      Positioned(
                                          bottom: 18,
                                          child:Text(
                                              "Shampoo"
                                          )),

                                      Positioned(
                                        bottom: 20,
                                        right: 5,
                                        child:Icon(
                                          Icons.favorite_border,
                                          size: 15,
                                        ),
                                      ),
                                      Positioned(
                                          bottom: 0,
                                          child: Text(
                                              "₹148"
                                          )),
                                      Positioned(
                                          bottom: 0,
                                          right: 5,
                                          child: Text(
                                              "₹200",
                                              style: TextStyle(
                                                  decoration: TextDecoration.lineThrough
                                              ))),

                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 140,
                                width: 230,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/chair.gif")
                                    )
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 5,),
                          Column(
                            children: [
                              Container(
                                height: 140,
                                width: 100,
                                decoration: BoxDecoration(
                                  //color: Colors.blue[50],
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(top:40,
                                      right: 10,
                                      left: 10,
                                      child: Image.asset(
                                        "images/unnamed.png",
                                        fit: BoxFit.cover,
                                        height: 60,
                                        width: 60,
                                      ),
                                    ),
                                    // Positioned(
                                    //   top: -10,
                                    //   left: -5,
                                    //   child: IconButton(
                                    //     icon: Icon(
                                    //       Icons.add_box_outlined,
                                    //       color: Colors.black,
                                    //       size: 25,
                                    //     ),
                                    //     onPressed: (){
                                    //
                                    //     },
                                    //   ),
                                    // ),
                                    Positioned(
                                      left: 2,
                                      top: 2,
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          //color: Colors.red[200],
                                        ),
                                        child: IconButton(
                                            padding: EdgeInsets.all(0),
                                            icon: Icon(
                                              Icons.star_border_rounded,
                                              color: Colors.yellow,
                                              size: 25,
                                            ),
                                            onPressed: (){

                                            }
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        top: 10,
                                        right:5 ,
                                        child: Text(
                                          "of the week",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )),
                                    Positioned(
                                        bottom: 10,
                                        left: 10,
                                        right: 10,
                                        child: Text(
                                          "Shimla Apple",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 176,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("images/pkl.jpg")
                              )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5,top: 85,left: 235,bottom: 5),
                            child: Center(
                              child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Center(child: Text("SHOP NOW",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w600),
                                ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Icon(Icons.circle,color: HexColor('#849DFE').withOpacity(.20),)
                            ],
                          ),
                          SizedBox(width: 3,),
                          Column(
                            children: [
                              Text("Combo Offers")
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 129,
                                width: 200,
                                decoration: BoxDecoration(
                                  //color: Colors.blue[50],
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 20,
                                      top: 20,
                                      bottom: 20,
                                      child: Image.asset(
                                        "images/page9pic1.jpg",
                                        fit: BoxFit.cover,
                                        height: 100,
                                        width: 100,
                                      ),
                                    ),
                                    // Positioned(
                                    //   top: -10,
                                    //   left: -5,
                                    //   child: IconButton(
                                    //     icon: Icon(
                                    //       Icons.add_box_outlined,
                                    //       color: Colors.black,
                                    //       size: 25,
                                    //     ),
                                    //     onPressed: (){
                                    //
                                    //     },
                                    //   ),
                                    // ),
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
                                        right: 2,
                                        top:40 ,
                                        bottom: 10,
                                        left: 120,
                                        child: Text(
                                          "Face Wash & Hand Wash Combo",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12
                                          ),
                                        )),
                                    Positioned(
                                        bottom: 20,
                                        right: 40,
                                        child: Text(
                                          "₹148",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),
                            ],

                          ),
                          SizedBox(width: 5,),
                          Column(
                            children: [
                              Container(
                                height: 129,
                                width: 129,
                                decoration: BoxDecoration(
                                  //color: Colors.blue[50],
                                ),
                                child: Stack(
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        "images/soap.png",
                                        fit: BoxFit.cover,
                                        height: 100,
                                        width: 100,
                                      ),
                                    ),
                                    // Positioned(
                                    //   top: -10,
                                    //   left: -5,
                                    //   child: IconButton(
                                    //     icon: Icon(
                                    //       Icons.add_box_outlined,
                                    //       color: Colors.black,
                                    //       size: 25,
                                    //     ),
                                    //     onPressed: (){
                                    //
                                    //     },
                                    //   ),
                                    // ),
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
                          ),
                          // SizedBox(width: 10,),
                          // Column(
                          //   children: [
                          //     Container(
                          //       height: 240,
                          //       width: 129,
                          //       decoration: BoxDecoration(
                          //         color: Colors.blue[50],
                          //       ),
                          //       child: Stack(
                          //         children: [
                          //           Center(
                          //             child: Image.asset(
                          //               "images/soap.png",
                          //               fit: BoxFit.cover,
                          //               height: 150,
                          //               width: 150,
                          //             ),
                          //           ),
                          //           Positioned(
                          //             top: -10,
                          //             left: -5,
                          //             child: IconButton(
                          //               icon: Icon(
                          //                 Icons.add_box_outlined,
                          //                 color: Colors.black,
                          //                 size: 25,
                          //               ),
                          //               onPressed: (){
                          //
                          //               },
                          //             ),
                          //           ),
                          //           Positioned(
                          //             right: 10,
                          //             top: 0,
                          //             child: Container(
                          //               height: 30,
                          //               width: 30,
                          //               decoration: BoxDecoration(
                          //                 borderRadius: BorderRadius.circular(5),
                          //                 color: Colors.red[200],
                          //               ),
                          //               child: IconButton(
                          //                   padding: EdgeInsets.all(0),
                          //                   icon: Icon(
                          //                     Icons.favorite_border_rounded,
                          //                     color: Colors.white,
                          //                     size: 20,
                          //                   ),
                          //                   onPressed: (){
                          //
                          //                   }
                          //               ),
                          //             ),
                          //           ),
                          //           Positioned(
                          //               bottom: 10,
                          //               left:10 ,
                          //               child: Text(
                          //                 "Soap",
                          //                 style: TextStyle(
                          //                     color: Colors.black,
                          //                     fontSize: 15
                          //                 ),
                          //               )),
                          //           Positioned(
                          //               bottom: 10,
                          //               right: 10,
                          //               child: Text(
                          //                 "₹148",
                          //                 style: TextStyle(
                          //                     color: Colors.black,
                          //                     fontSize: 15
                          //                 ),
                          //               )),
                          //         ],
                          //       ),
                          //     )
                          //   ],
                          // )
                        ],
                      ),
                    ),

                  ]
              ),
            ),
          ),

      );
  }
}