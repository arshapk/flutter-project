import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:shopping_app_ui/7home.dart';
import 'package:shopping_app_ui/Searchpage16.dart';
import 'package:shopping_app_ui/constants/HexColor.dart';
import 'package:shopping_app_ui/paymentpage13.dart';
import 'package:shopping_app_ui/wallet18.dart';
class Mycart extends StatefulWidget {
  @override
  _MycartState createState() => _MycartState();
}

class _MycartState extends State<Mycart> {
  var value = 1;
  var k = 0;
  int currentIndex;
  int _counter = 0;
  bool showRaisedButtonBadge = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
    value = 0;
  }

  changePage(int index) {
    setState(() {
      currentIndex = index;
      value = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.close, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "My Cart",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              ListView.builder(
                  itemCount: 1,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  // itemExtent: 200.0,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 100,
                        // width: 330,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white30),
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 5),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(0, -16)),
                              BoxShadow(
                                  color: Colors.white, offset: Offset(0, 16)),
                              BoxShadow(
                                  color: Colors.white, offset: Offset(0, 0)),
                              BoxShadow(
                                  color: Colors.grey, offset: Offset(0, 1)),
                            ]),
                        child: Row(
                          children: [
                            Image.asset("images/pngflow.png",
                                fit: BoxFit.fill),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Shampoo ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  "₹ 148",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      value++;
                                      k = k + 148;
                                    });
                                  },
                                  child: Container(
                                    height: 23,
                                    width: 23,
                                    child:
                                    //IconButton(
                                      //icon:
                                    Icon(
                                        Icons.add_box_rounded,
                                        color: HexColor("#1F1E59"),
                                        size: 21,
                                      ),
                                    //  onPressed: () {},
                                    ),
                                  ),
                              //  ),
                                SizedBox(
                                  height: 10,
                                  width: 28,
                                ),
                                Container(
                                    height: 23,
                                    width: 23,
                                    child: Center(
                                      child: Text(
                                        value.toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: HexColor("#1F1E59")),
                                      ),
                                    )),
                                SizedBox(
                                  height: 2,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      value--;
                                      k = k - 148;
                                    });
                                  },
                                  child: Container(
                                    height: 23,
                                    width: 23,
                                    child:
                                    //IconButton(
                                      //icon:
                                      Icon(Icons.remove_circle_rounded,
                                          color: HexColor("#1F1E59")),
                                      //onPressed: () {},
                                    ),
                                  ),
                               // ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: 144,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  DottedBorder(
                    dashPattern: [8, 12],
                    strokeWidth: 1,
                    color: Colors.grey,
                    strokeCap: StrokeCap.round,
                    borderType: BorderType.RRect,
                    radius: Radius.circular(5),
                    child: Center(
                      child: Center(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Text(
                                "Total:",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              height: 60,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Text(
                                k.toString(),
                                style: TextStyle(fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 48,
                        width: 315,
                        decoration: BoxDecoration(
                          color: HexColor("#1F1E59"),
                        ),
                        child: Center(
                          child: Text(
                            "Checkout",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
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
