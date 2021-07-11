import 'package:flutter/material.dart';
import 'package:shopping_app_ui/11homecategory.dart';
import 'package:shopping_app_ui/constants/HexColor.dart';

class Favourite21 extends StatefulWidget {
  @override
  _Favourite21State createState() => _Favourite21State();
}

class _Favourite21State extends State<Favourite21> {
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
          "My Favourites",
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
          ],
        ),
      ),
    );
  }
}
