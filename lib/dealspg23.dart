import 'package:flutter/material.dart';
import 'package:shopping_app_ui/11homecategory.dart';
import 'package:shopping_app_ui/constants/HexColor.dart';

class Deals23 extends StatefulWidget {
  @override
  _Deals23State createState() => _Deals23State();
}

class _Deals23State extends State<Deals23> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
            child: Text(
          "Top Deals",
          style: TextStyle(
            color: HexColor("#4B4B7A"),
          ),
        )),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            SizedBox(height: 15),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeCat11()));
              },
              child: Container(
                height: 240,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                ),
                child: Stack(
                  children: [
                    Positioned(
                        child: Center(
                            child: Image.asset(
                      "images/pg11shampoo.png",
                    ))),
                    Positioned(
                        left: 5,
                        top: 10,
                        child: Image.asset(
                          "images/plus2.png",
                          height: 20,
                          width: 20,
                        )),
                    Positioned(
                        right: 5,
                        top: 10,
                        child: Icon(
                          Icons.favorite_outlined,
                          color: Colors.red,
                          size: 20,
                        )),
                    Positioned(
                        bottom: 18,
                        left: 20,
                        child: Text(
                          "Shampoo",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )),
                    Positioned(right: 20, bottom: 18, child: Text("₹148")),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeCat11()));
              },
              child: Container(
                height: 240,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                ),
                child: Stack(
                  children: [
                    Positioned(
                        child: Center(
                            child: Image.asset(
                      "images/pg11shampoo.png",
                    ))),
                    Positioned(
                        left: 5,
                        top: 10,
                        child: Image.asset(
                          "images/plus2.png",
                          height: 20,
                          width: 20,
                        )),
                    Positioned(
                        right: 5,
                        top: 10,
                        child: Icon(
                          Icons.favorite_outlined,
                          color: Colors.red,
                          size: 20,
                        )),
                    Positioned(
                        bottom: 18,
                        left: 20,
                        child: Text(
                          "Shampoo",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )),
                    Positioned(right: 20, bottom: 18, child: Text("₹148")),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
